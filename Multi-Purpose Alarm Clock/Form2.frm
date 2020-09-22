VERSION 5.00
Object = "{22D6F304-B0F6-11D0-94AB-0080C74C7E95}#1.0#0"; "msdxm.ocx"
Begin VB.Form Form2 
   BackColor       =   &H80000012&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Program Parameters"
   ClientHeight    =   1380
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   5355
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1380
   ScaleWidth      =   5355
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   6000
      Top             =   240
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Done"
      Height          =   375
      Left            =   3960
      TabIndex        =   6
      Top             =   960
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set Parameters"
      Height          =   375
      Left            =   2520
      TabIndex        =   5
      Top             =   960
      Width           =   1335
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H80000007&
      ForeColor       =   &H80000005&
      Height          =   285
      Left            =   2520
      TabIndex        =   4
      Text            =   "c:\"
      Top             =   600
      Width           =   2775
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H80000007&
      ForeColor       =   &H80000009&
      Height          =   285
      Left            =   2520
      TabIndex        =   3
      Text            =   "c:\"
      Top             =   120
      Width           =   2775
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H80000008&
      Caption         =   "ShutDown PC !"
      ForeColor       =   &H8000000E&
      Height          =   240
      Left            =   120
      TabIndex        =   2
      Top             =   1080
      Width           =   2000
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H80000008&
      Caption         =   "Run A Program"
      ForeColor       =   &H8000000E&
      Height          =   240
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   2000
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H80000008&
      Caption         =   "Wake Up!(Play A Song)"
      ForeColor       =   &H8000000E&
      Height          =   240
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2000
   End
   Begin MediaPlayerCtl.MediaPlayer MediaPlayer1 
      Height          =   2295
      Left            =   360
      TabIndex        =   7
      Top             =   6240
      Width           =   5775
      AudioStream     =   -1
      AutoSize        =   0   'False
      AutoStart       =   -1  'True
      AnimationAtStart=   -1  'True
      AllowScan       =   -1  'True
      AllowChangeDisplaySize=   -1  'True
      AutoRewind      =   0   'False
      Balance         =   0
      BaseURL         =   ""
      BufferingTime   =   5
      CaptioningID    =   ""
      ClickToPlay     =   -1  'True
      CursorType      =   0
      CurrentPosition =   -1
      CurrentMarker   =   0
      DefaultFrame    =   ""
      DisplayBackColor=   0
      DisplayForeColor=   16777215
      DisplayMode     =   0
      DisplaySize     =   4
      Enabled         =   -1  'True
      EnableContextMenu=   -1  'True
      EnablePositionControls=   -1  'True
      EnableFullScreenControls=   0   'False
      EnableTracker   =   -1  'True
      Filename        =   ""
      InvokeURLs      =   -1  'True
      Language        =   -1
      Mute            =   0   'False
      PlayCount       =   1
      PreviewMode     =   0   'False
      Rate            =   1
      SAMILang        =   ""
      SAMIStyle       =   ""
      SAMIFileName    =   ""
      SelectionStart  =   -1
      SelectionEnd    =   -1
      SendOpenStateChangeEvents=   -1  'True
      SendWarningEvents=   -1  'True
      SendErrorEvents =   -1  'True
      SendKeyboardEvents=   0   'False
      SendMouseClickEvents=   0   'False
      SendMouseMoveEvents=   0   'False
      SendPlayStateChangeEvents=   -1  'True
      ShowCaptioning  =   0   'False
      ShowControls    =   -1  'True
      ShowAudioControls=   -1  'True
      ShowDisplay     =   0   'False
      ShowGotoBar     =   0   'False
      ShowPositionControls=   -1  'True
      ShowStatusBar   =   0   'False
      ShowTracker     =   -1  'True
      TransparentAtStart=   0   'False
      VideoBorderWidth=   0
      VideoBorderColor=   0
      VideoBorder3D   =   0   'False
      Volume          =   -600
      WindowlessVideo =   0   'False
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
If Option1.Value = True Then
If Text1.Text = "" Then MsgBox "You Must Fill The File's Path In Order To Wake You Up !", vbInformation + vbOKOnly
Text1.SetFocus
End If
If Option1.Value = True Then
If Text1.Text = "c:\" Then MsgBox "You Must Fill The File's Path In Order To Wake You Up !", vbInformation + vbOKOnly
Text1.SetFocus
End If
If Option2.Value = True Then
If Text2.Text = "" Then MsgBox "You Must Fill The File's Path In Order To Run It When The Alarm Clock Is Done !", vbInformation + vbOKOnly
Text2.SetFocus
End If
If Option2.Value = True Then
If Text2.Text = "c:\" Then MsgBox "You Must Fill The File's Path In Order To Run It When The Alarm Clock Is Done !", vbInformation + vbOKOnly
Text2.SetFocus
End If
End Sub


Private Sub Command2_Click()
Form2.Hide
Form1.SetFocus
End Sub


Private Sub Timer1_Timer()
MediaPlayer1.FileName = Text1.Text
MediaPlayer1.Play
Timer1.Enabled = False
End Sub
