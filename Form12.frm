VERSION 5.00
Object = "{69C832A0-68F4-452F-9B16-837E157288D9}#1.0#0"; "styler_button.ocx"
Begin VB.Form Form12 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Total Billing Chart"
   ClientHeight    =   5265
   ClientLeft      =   45
   ClientTop       =   375
   ClientWidth     =   8535
   LinkTopic       =   "Form12"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5265
   ScaleWidth      =   8535
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin Styler_button.StylerButton StylerButton1 
      Height          =   855
      Left            =   1920
      TabIndex        =   0
      Top             =   1200
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   1508
      Caption         =   "Patient wise Bill"
      ForeColor       =   16711680
      CaptionDisableColor=   13153946
      CaptionEffectColor=   16777215
      IconDisableColor=   13614497
      Theme           =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin Styler_button.StylerButton StylerButton2 
      Height          =   855
      Left            =   1920
      TabIndex        =   1
      Top             =   3000
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   1508
      Caption         =   "Hospital wise bill"
      ForeColor       =   16711680
      CaptionDisableColor=   13153946
      CaptionEffectColor=   16777215
      IconDisableColor=   13614497
      Theme           =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Palatino Linotype"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Image Image1 
      Height          =   735
      Left            =   480
      Top             =   960
      Width           =   255
   End
End
Attribute VB_Name = "Form12"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    'connecting DataEnvironment
    Set DataEnvironment1 = Nothing
    DataEnvironment1.Connection1.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" & App.Path & "\Database\Signup.accdb;Persist Security Info=False"
    
    Me.Image1.Picture = LoadPicture(App.Path & "/Purple.jpg")
    With Me.Image1
        .Height = Me.ScaleHeight
        .Width = Me.ScaleWidth
        .Top = 0
        .Left = 0
    End With
End Sub

Private Sub Form_Unload(Cancel As Integer)
    MDIForm1.Visible = True
End Sub

Private Sub StylerButton1_Click()
    Set DataEnvironment1 = Nothing
    Form13.Show
End Sub

Private Sub StylerButton2_Click()
    Set DataEnvironment1 = Nothing
    DataEnvironment1.rsCommand1.Open "Select * from Billing"
   
    
    DataReport4.Refresh
    DataReport4.Show
    DataReport4.WindowState = vbMaximized
    
End Sub

