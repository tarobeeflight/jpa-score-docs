Option Explicit

Sub CreateDDL()
    Dim lo As ListObject
    Dim dataBody As Variant
    Dim r As Long
    Dim tables As New Collection
    Dim currentTable As clsTable
    Dim currentTblNm As String
    Dim tableName As String: tableName = "t_table_def"
    Dim schemaNm As String: schemaNm = "jpa_scorer_db"

    ' テーブルを取得して配列に格納
    On Error Resume Next
    Set lo = ActiveSheet.ListObjects(tableName)
    On Error GoTo 0
    
    If lo Is Nothing Then
        MsgBox "テーブル '" & tableName & "' が見つかりません。"
        Exit Sub
    End If
    
    ' データ部分をまるごと配列へ（高速化）
    dataBody = lo.DataBodyRange.Value

    ' 動的に列番号を取得
    Dim idxTblType As Long
    Dim idxTblNmCmt As Long
    Dim idxTblNm As Long
    Dim idxClmNmCmt As Long
    Dim idxClmNm As Long
    Dim idxDataType As Long
    Dim idxIsKey As Long
    Dim idxIsRequired As Long
    idxTblType = lo.ListColumns("テーブル種別").Index
    idxTblNmCmt = lo.ListColumns("テーブル名（論理名）").Index
    idxTblNm = lo.ListColumns("テーブル名（物理名）").Index
    idxClmNmCmt = lo.ListColumns("項目名（論理名）").Index
    idxClmNm = lo.ListColumns("項目名（物理名）").Index
    idxDataType = lo.ListColumns("型").Index
    idxIsKey = lo.ListColumns("キー").Index
    idxIsRequired = lo.ListColumns("必須").Index
    
    ' 配列をループして解析
    For r = 1 To UBound(dataBody, 1)
        ' テーブル種別が「共通」の場合はスキップ
        If dataBody(r, idxTblType) = "共通" Then
            GoTo NextRow
        End If

        currentTblNm = dataBody(r, idxTblNm)
        
        ' テーブルの変わり目判定
        If currentTable Is Nothing Then
            Set currentTable = CreateNewTable(dataBody, schemaNm, r, idxTblNmCmt, idxTblNm)
            tables.Add currentTable
        ElseIf currentTable.TblNm <> currentTblNm Then
            Set currentTable = CreateNewTable(dataBody, schemaNm, r, idxTblNmCmt, idxTblNm)
            tables.Add currentTable
        End If
        
        ' カラム情報の作成と追加
        Dim col As clsColumn
        Set col = New clsColumn
        col.ClmNmCmt = dataBody(r, idxClmNmCmt)
        col.ClmNm = dataBody(r, idxClmNm)
        col.DataType = dataBody(r, idxDataType)
        col.IsKey = (dataBody(r, idxIsKey) = "○")
        col.IsRequired = (dataBody(r, idxIsRequired) = "○")
        
        currentTable.Columns.Add col

NextRow:
    Next r

    ' 結果の出力
    Dim t As clsTable
    Dim sql As String: sql = ""
    For Each t In tables
        sql = sql & t.GenerateCreateTable() & vbCrLf & vbCrLf
    Next t
    
    ' --- ファイルへの書き出し (Download処理) ---
    Dim filePath As String
    ' デスクトップのパスを取得
    filePath = CreateObject("WScript.Shell").SpecialFolders("Desktop") & "\jpa_scorer_db.sql"
    
    ' テキストファイルとして保存 (UTF-8)
    ' ※ADODB.Streamを使うことで、MySQLと相性の良い文字コードで保存します
    Dim stream As Object
    Set stream = CreateObject("ADODB.Stream")
    
    With stream
        .Type = 2 ' adTypeText
        .Charset = "UTF-8"
        .Open
        .WriteText sql
        .SaveToFile filePath, 2 ' adSaveCreateOverWrite
        .Close
    End With
    
    MsgBox "SQLファイルをデスクトップに保存しました！" & vbCrLf & "Path: " & filePath, vbInformation
End Sub

' 新しいテーブルインスタンスを作る補助関数
Private Function CreateNewTable(dataBody As Variant, schemaNm As String, r As Long, idxTblNmCmt As Long, idxTblNm As Long) As clsTable
    Dim t As New clsTable
    t.SchemaNm = schemaNm
    t.TblNmCmt = dataBody(r, idxTblNmCmt)
    t.TblNm = dataBody(r, idxTblNm)
    Set CreateNewTable = t
End Function
