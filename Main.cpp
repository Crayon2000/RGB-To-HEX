//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMain *frmMain;
//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackRChange(TObject */*Sender*/)
{
    txtR->Text = TrackR->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackGChange(TObject */*Sender*/)
{
    txtG->Text = TrackG->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackBChange(TObject */*Sender*/)
{
    txtB->Text = TrackB->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::Button1Click(TObject */*Sender*/)
{
    TClipboard *ClipBoard  = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX->Text.c_str());
    delete ClipBoard;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::ColorBox1Change(TObject */*Sender*/)
{
    ChangeColor(ColorBox1->Selected);
    txtR->Text = GetRValue(ColorBox1->Selected);
    txtG->Text = GetGValue(ColorBox1->Selected);
    txtB->Text = GetBValue(ColorBox1->Selected);
}
//---------------------------------------------------------------------------


void __fastcall TfrmMain::txtRChange(TObject */*Sender*/)
{
    try
    {
        TrackR->Position = StrToInt(txtR->Text);
    }
    catch (EConvertError &E)
    {
    }
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::txtGChange(TObject */*Sender*/)
{
    try
    {
        TrackG->Position = StrToInt(txtG->Text);
    }
    catch (EConvertError &E)
    {
    }
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::txtBChange(TObject */*Sender*/)
{
    try
    {
        TrackB->Position = StrToInt(txtB->Text);
    }
    catch (EConvertError &E)
    {
    }
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::BrowseColor1Click(TObject */*Sender*/)
{
    ColorDialog1->Color = RGBColor->Color;
    ColorDialog1->Execute();
    ChangeColor(ColorDialog1->Color);
    txtR->Text = GetRValue(ColorDialog1->Color);
    txtG->Text = GetGValue(ColorDialog1->Color);
    txtB->Text = GetBValue(ColorDialog1->Color);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::ChangeColor(TColor Color)
{
    RGBColor->Color = Color;
    txtHEX->Text = IntToHex(GetRValue(Color), 2) +
                    IntToHex(GetGValue(Color), 2) +
                    IntToHex(GetBValue(Color), 2);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackChange()
{
    TColor Color = TColor(RGB(TrackR->Position, TrackG->Position, TrackB->Position));
    ChangeColor(Color);
    //ColorBox1->Selected = Color;
}
//---------------------------------------------------------------------------


