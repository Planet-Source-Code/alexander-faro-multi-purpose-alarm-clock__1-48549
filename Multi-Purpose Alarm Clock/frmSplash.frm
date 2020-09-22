VERSION 5.00
Begin VB.Form SplashScreen 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3975
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   6585
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3975
   ScaleWidth      =   6585
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      BackColor       =   &H80000012&
      BorderStyle     =   0  'None
      Height          =   4050
      Left            =   0
      TabIndex        =   0
      Top             =   -50
      Width           =   6600
      Begin VB.Timer Timer1 
         Interval        =   2500
         Left            =   6000
         Top             =   600
      End
      Begin VB.PictureBox Picture2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   1695
         Left            =   360
         Picture         =   "frmSplash.frx":000C
         ScaleHeight     =   1665
         ScaleWidth      =   5865
         TabIndex        =   3
         Top             =   1920
         Width           =   5895
      End
      Begin VB.PictureBox Picture1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000005&
         ForeColor       =   &H80000008&
         Height          =   820
         Left            =   1440
         Picture         =   "frmSplash.frx":259C
         ScaleHeight     =   795
         ScaleWidth      =   3825
         TabIndex        =   2
         Top             =   240
         Width           =   3855
      End
      Begin VB.Label lblProductName 
         AutoSize        =   -1  'True
         BackColor       =   &H80000007&
         Caption         =   "Multi-Purpose Alarm Clock"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   555
         Left            =   240
         TabIndex        =   1
         Top             =   1200
         Width           =   6180
      End
   End
End
Attribute VB_Name = "SplashScreen"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
    Unload Me
End Sub

Private Sub Frame1_Click()
Unload Me
Form1.Show
End Sub

Private Sub Timer1_Timer()
Unload Me
Form1.Show
End Sub
