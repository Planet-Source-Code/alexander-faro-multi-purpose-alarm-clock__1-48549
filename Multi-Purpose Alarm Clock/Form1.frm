VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   2640
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4305
   LinkTopic       =   "Form1"
   ScaleHeight     =   2640
   ScaleWidth      =   4305
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   2040
      Top             =   3120
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Exit"
      Height          =   495
      Left            =   120
      TabIndex        =   7
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "About"
      Height          =   495
      Left            =   1560
      TabIndex        =   6
      Top             =   2040
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set Alarm"
      Height          =   495
      Left            =   3000
      TabIndex        =   5
      Top             =   2040
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   3240
      Top             =   3000
   End
   Begin VB.TextBox Text2 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   2
      Text            =   "00:00:00"
      Top             =   1320
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      BackColor       =   &H0000FF00&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   1
      Text            =   "9:00:00"
      Top             =   720
      Width           =   2055
   End
   Begin VB.Line Line1 
      X1              =   0
      X2              =   4320
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000008&
      Caption         =   "Alarm Set On :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1320
      Width           =   1575
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000008&
      Caption         =   "TIme :"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   720
      Width           =   975
   End
   Begin VB.Label Label1 
      BackColor       =   &H00000000&
      Caption         =   "Alfa Inc. - Alarm Clock"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   161
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   375
      Left            =   720
      TabIndex        =   0
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Text2.Enabled = False
Form2.Show
Timer2.Enabled = True



End Sub

Private Sub Command2_Click()
SplashScreen.Show
Me.Hide
End Sub

Private Sub Command3_Click()
End
End Sub

Private Sub Timer1_Timer()
Text1.Text = Format(Time, "hh:mm:ss")
End Sub

Private Sub Timer2_Timer()
If Text2.Text = Text1.Text Then
        
        Text2.Enabled = True
        
        If Form2.Option1.Value = True Then
        Form2.Visible = True
        Form2.SetFocus
        Form2.Timer1.Enabled = True
        End If
        
        If Form2.Option2.Value = True Then
        Dim RetVal
        RetVal = Shell(Form2.Text2.Text, 1)
        End If
        
        If Form2.Option3.Value = True Then
        WINShutdown
        End If

End If
End Sub
Public Function WINShutdown()
ExitWindowsEx EWX_SHUTDOWN, 1
ExitWindowsEx EWX_SHUTDOWN, 1
ExitWindowsEx EWX_SHUTDOWN, 1
End Function
