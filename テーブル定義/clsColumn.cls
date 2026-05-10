VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsColumn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public ClmNm As String       ' 項目名（物理）
Public ClmNmCmt As String    ' 項目名（論理）
Public DataType As String    ' 型
Public IsKey As Boolean      ' キー
Public IsRequired As Boolean ' 必須