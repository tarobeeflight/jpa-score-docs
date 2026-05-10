Option Explicit

' プロパティの定義
Public SchemaNm As String    ' スキーマ名
Public TblNm As String       ' テーブル名（物理名）
Public TblNmCmt As String    ' テーブル名（論理名）
Public Columns As Collection ' カラム情報のリスト

' 初期化処理
Private Sub Class_Initialize()
    Set Columns = New Collection
End Sub

' DDLを書き出すメソッド
Public Function GenerateCreateTable() As String
    Dim ddl As String
    Dim col As clsColumn
    Dim pkList As String
    Dim isFirst As Boolean

    ' テーブルの作成
    ddl = "DROP TABLE IF EXISTS `" & Me.SchemaNm & "`.`" & Me.TblNm & "`;" & vbCrLf
    ddl = ddl & "CREATE TABLE `" & Me.SchemaNm & "`.`" & Me.TblNm & "` (" & vbCrLf

    ' カラム定義のループ
    isFirst = True
    For Each col In Me.Columns
        If Not isFirst Then ddl = ddl & "," & vbCrLf
        
        ' カラム名と型
        ddl = ddl & "    `" & col.ClmNm & "` " & col.DataType
        
        ' NOT NULL 制約
        If col.IsRequired Then
            ddl = ddl & " NOT NULL"
        End If
        
        ' カラムコメント（論理名）
        ddl = ddl & " COMMENT '" & col.ClmNmCmt & "'"
        
        isFirst = False
    Next col

    ' 共通カラムの定義
    ddl = ddl & "," & vbCrLf & "    `insert_dt` TIMESTAMP COMMENT '登録日時'"
    ddl = ddl & "," & vbCrLf & "    `insert_user_id` VARCHAR(20) COMMENT '登録ユーザID'"
    ddl = ddl & "," & vbCrLf & "    `insert_kino_id` VARCHAR(20) COMMENT '登録機能ID'"
    ddl = ddl & "," & vbCrLf & "    `update_dt` TIMESTAMP COMMENT '更新日時'"
    ddl = ddl & "," & vbCrLf & "    `update_user_id` VARCHAR(20) COMMENT '更新ユーザID'"
    ddl = ddl & "," & vbCrLf & "    `update_kino_id` VARCHAR(20) COMMENT '更新機能ID'"
    ddl = ddl & "," & vbCrLf & "    `revision` INT COMMENT 'リビジョン'"

    ' 主キー定義
    pkList = ""
    For Each col In Me.Columns
        If col.IsKey Then
            If pkList <> "" Then pkList = pkList & ", "
            pkList = pkList & "`" & col.ClmNm & "`"
        End If
    Next col
    If pkList <> "" Then
        ddl = ddl & "," & vbCrLf & "    PRIMARY KEY (" & pkList & ")"
    End If

    ' テーブル全体の閉じ
    ddl = ddl & vbCrLf & ") ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='" & Me.TblNmCmt & "';"
    
    GenerateCreateTable = ddl
End Function
