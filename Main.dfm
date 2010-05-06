object frmMain: TfrmMain
  Left = 555
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RGB To HEX'
  ClientHeight = 289
  ClientWidth = 433
  Color = clBtnFace
  ParentFont = True
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF000000000000000000000000000000000008F0
    B807B00AFFFAAA7AA00D9D9595000BF08B07800AFFFFA8AAA009F959590008F0
    B807B00AFFFAAA7AA000000000000BF08B07800AFFFFA8AAA009F959590008F0
    B807B00AFFFAAA7AA00DFD9595000BF08B07800AFFFFA8AAA009F959590008F0
    B807B00AFFFA7A7AA00DFD9595000BF08B07800A0F0A00000009F959590008F0
    B807B0AAFFFAFA7AAA0DF91115000BF08B0780AAFFFFA8A7AA09F000190008F0
    B807B00A0F0A0000000DF0F015000BF08B07800AFFFFA8AAA009F080190008F0
    B807B00AFFFAAA7AA00DF08015000BF08B07800AFFFFA8AAA009F080190008F0
    B807B00AFFFAAA7AA00DF08015000BF00007800AFFFFA8AAA009F08019000B0F
    B880B0000F0A0000000DF080150000FFF8F80000AFFFA7AA0009F08019000FBF
    F8B88000AFFAAAAA000DF080150000FFF8F80000AFFFA7AA0009F080190000FF
    B8F80000AFFAAAAA000DF0801500000FF8F00000000000000009F0801900000F
    F8B0000000AAAA00000DF08015000000F800000000AAAA000009F08019000000
    F800000000AAAA00000DF0801500000000000000000AAA000009F08019000000
    000000000000AA00000DF0801500000000000000000000000009F08019000000
    0000000000000000000007F700000000000000000000000000008B8B80000000
    0000000000000000000000000000806006030000000100000001000002030000
    0001000000010000000100000001000000010000000100000001000000010000
    0001000000010000000100000001000000010020040100200401002004018060
    040180600401C0E00401C0F81C01E1F81C01E1F81C01F3F81C01F3FC1C01FFFE
    1C01FFFFFC01FFFFFE03FFFFFF07280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000B7B0000000000000878
    0AFFA00D9D900B7B0AFAA009D95008780AFFA00D9D900B7B0F0F0009D9500878
    AFFAAA0D00900B7B0F0F0009805008780AFFA00D80900B7B0AFAA00980500878
    0000000D80900B7B0AFFA00980500FF80000000D80900FF800AA000980500000
    000A000D8090000000000009D950000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000004000008C400000DE400000FFE10000}
  OldCreateOrder = False
  OnMouseMove = FormMouseMove
  OnMouseUp = FormMouseUp
  PixelsPerInch = 96
  TextHeight = 13
  object lblR: TLabel
    Left = 8
    Top = 48
    Width = 14
    Height = 23
    Caption = 'R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblG: TLabel
    Left = 8
    Top = 80
    Width = 14
    Height = 23
    Caption = 'G'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblB: TLabel
    Left = 8
    Top = 112
    Width = 13
    Height = 23
    Caption = 'B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTitre: TLabel
    Left = 109
    Top = 0
    Width = 193
    Height = 39
    Caption = 'RGB To HEX'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblHighcolor: TLabel
    Left = 184
    Top = 230
    Width = 78
    Height = 13
    Caption = '16-bit highcolor:'
  end
  object lblTruecolor: TLabel
    Left = 186
    Top = 172
    Width = 78
    Height = 13
    Caption = '24-bit truecolor:'
  end
  object txtR: TEdit
    Left = 32
    Top = 48
    Width = 49
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    PopupMenu = PopupMenu2
    TabOrder = 0
    Text = '0'
    OnChange = txtRChange
  end
  object txtG: TEdit
    Left = 32
    Top = 80
    Width = 49
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    PopupMenu = PopupMenu2
    TabOrder = 1
    Text = '0'
    OnChange = txtGChange
  end
  object txtB: TEdit
    Left = 32
    Top = 112
    Width = 49
    Height = 21
    MaxLength = 3
    NumbersOnly = True
    PopupMenu = PopupMenu2
    TabOrder = 2
    Text = '0'
    OnChange = txtBChange
  end
  object TrackR: TTrackBar
    Left = 88
    Top = 48
    Width = 337
    Height = 25
    LineSize = 5
    Max = 255
    PageSize = 5
    Frequency = 25
    TabOrder = 3
    OnChange = TrackRChange
  end
  object TrackG: TTrackBar
    Left = 88
    Top = 80
    Width = 337
    Height = 25
    LineSize = 5
    Max = 255
    PageSize = 5
    Frequency = 25
    TabOrder = 4
    OnChange = TrackGChange
  end
  object TrackB: TTrackBar
    Left = 88
    Top = 112
    Width = 337
    Height = 25
    LineSize = 5
    Max = 255
    PageSize = 5
    Frequency = 25
    TabOrder = 5
    OnChange = TrackBChange
  end
  object cmdClipboard24: TButton
    Left = 317
    Top = 191
    Width = 108
    Height = 33
    Caption = 'Copy to Clipboard'
    TabOrder = 9
    OnClick = cmdClipboard24Click
  end
  object txtHEX24: TEdit
    Left = 184
    Top = 191
    Width = 113
    Height = 33
    AutoSize = False
    CharCase = ecUpperCase
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    Text = '000000'
  end
  object ColorBox1: TColorBox
    Left = 184
    Top = 144
    Width = 113
    Height = 22
    Style = [cbStandardColors, cbIncludeNone, cbIncludeDefault, cbPrettyNames]
    TabOrder = 6
    OnChange = ColorBox1Change
  end
  object RGBColor: TPanel
    Left = 8
    Top = 143
    Width = 161
    Height = 138
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    PopupMenu = PopupMenu1
    TabOrder = 12
  end
  object txtHEX16: TEdit
    Left = 184
    Top = 249
    Width = 113
    Height = 32
    AutoSize = False
    CharCase = ecUpperCase
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 10
    Text = '0000'
  end
  object cmdClipboard16: TButton
    Left = 317
    Top = 248
    Width = 108
    Height = 33
    Caption = 'Copy to Clipboard'
    TabOrder = 11
    OnClick = cmdClipboard16Click
  end
  object cmdColorPicker: TButton
    Left = 317
    Top = 143
    Width = 108
    Height = 25
    Caption = 'Pick Color'
    TabOrder = 7
    OnMouseDown = cmdColorPickerMouseDown
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen]
    Left = 8
    Top = 8
  end
  object PopupMenu1: TPopupMenu
    Left = 48
    Top = 8
    object BrowseColor1: TMenuItem
      Caption = 'Browse Color...'
      OnClick = BrowseColor1Click
    end
  end
  object ActionList1: TActionList
    Left = 328
    Top = 8
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = 'Copy'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = 'Delete'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 368
    Top = 8
    object Copy1: TMenuItem
      Action = EditCopy1
    end
    object Delete1: TMenuItem
      Action = EditDelete1
    end
  end
end
