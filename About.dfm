object AboutBox: TAboutBox
  Left = 200
  Top = 108
  BorderStyle = bsDialog
  Caption = 'About RGB To HEX'
  ClientHeight = 156
  ClientWidth = 298
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
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
      Width = 75
      Height = 13
      Caption = 'RGB To HEX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Version 1.2'
      IsControl = True
    end
    object Copyright: TLabel
      Left = 8
      Top = 80
      Width = 189
      Height = 13
      Caption = 'Copyright 2001-2009 Crayon Application'
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
