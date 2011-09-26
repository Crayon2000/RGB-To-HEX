object frmMain: TfrmMain
  Left = 555
  Top = 264
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RGB To HEX'
  ClientHeight = 348
  ClientWidth = 460
  Color = clBtnFace
  ParentFont = True
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
    Left = 0
    Top = 0
    Width = 460
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'RGB To HEX'
    ExplicitWidth = 57
  end
  object lblHighcolor: TLabel
    Left = 184
    Top = 289
    Width = 78
    Height = 13
    Caption = '16-bit highcolor:'
  end
  object lblTruecolor: TLabel
    Left = 186
    Top = 231
    Width = 78
    Height = 13
    Caption = '24-bit truecolor:'
  end
  object lblRGBA: TLabel
    Left = 188
    Top = 173
    Width = 62
    Height = 13
    Caption = '32-bit RGBA:'
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
    Width = 364
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
    Width = 364
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
    Width = 364
    Height = 25
    LineSize = 5
    Max = 255
    PageSize = 5
    Frequency = 25
    TabOrder = 5
    OnChange = TrackBChange
  end
  object cmdClipboard24: TButton
    Left = 344
    Top = 250
    Width = 108
    Height = 33
    Caption = 'Copy to Clipboard'
    TabOrder = 11
    OnClick = cmdClipboard24Click
  end
  object txtHEX24: TEdit
    Left = 184
    Top = 250
    Width = 151
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
    TabOrder = 10
    Text = '000000'
  end
  object ColorBox1: TColorBox
    Left = 184
    Top = 144
    Width = 151
    Height = 22
    Style = [cbStandardColors, cbIncludeNone, cbIncludeDefault, cbPrettyNames]
    TabOrder = 6
    OnChange = ColorBox1Change
  end
  object RGBColor: TPanel
    Left = 8
    Top = 143
    Width = 161
    Height = 197
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = clBlack
    ParentBackground = False
    PopupMenu = PopupMenu1
    TabOrder = 14
  end
  object txtHEX16: TEdit
    Left = 184
    Top = 308
    Width = 151
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
    TabOrder = 12
    Text = '0000'
  end
  object cmdClipboard16: TButton
    Left = 344
    Top = 307
    Width = 108
    Height = 33
    Caption = 'Copy to Clipboard'
    TabOrder = 13
    OnClick = cmdClipboard16Click
  end
  object cmdColorPicker: TButton
    Left = 344
    Top = 143
    Width = 108
    Height = 25
    Caption = 'Pick Color'
    TabOrder = 7
    OnMouseDown = cmdColorPickerMouseDown
  end
  object cmdClipboard32: TButton
    Left = 344
    Top = 192
    Width = 108
    Height = 33
    Caption = 'Copy to Clipboard'
    TabOrder = 9
    OnClick = cmdClipboard32Click
  end
  object txtHEX32: TEdit
    Left = 186
    Top = 192
    Width = 151
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
    Text = '000000FF'
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
