object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About RGB To HEX'
  ClientHeight = 156
  ClientWidth = 298
  Color = clBtnFace
  ParentFont = True
  Position = poMainFormCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 113
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProgramIcon: TImage
      Left = 8
      Top = 8
      Width = 48
      Height = 48
      IsControl = True
    end
    object ProductName: TLabel
      Left = 88
      Top = 16
      Width = 62
      Height = 15
      Caption = 'RGB To HEX'
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 65
      Height = 15
      Caption = 'Version 1.4.0'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 80
      Width = 214
      Height = 15
      Caption = 'Copyright 2001-2024 Crayon Application'
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 111
    Top = 127
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
