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

void __fastcall TfrmMain::cmdClipboard24Click(TObject */*Sender*/)
{
    TClipboard *ClipBoard  = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX24->Text.c_str());
    delete ClipBoard;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::cmdClipboard16Click(TObject */*Sender*/)
{
    TClipboard *ClipBoard  = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX16->Text.c_str());
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
    int R = GetRValue(Color),
        G = GetGValue(Color),
        B = GetBValue(Color);

    RGBColor->Color = Color;
    txtHEX24->Text = IntToHex(R, 2) +
                     IntToHex(G, 2) +
                     IntToHex(B, 2);
    txtHEX16->Text = IntToHex(RGB24To16(R, G, B), 4);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackChange()
{
    TColor Color = TColor(RGB(TrackR->Position, TrackG->Position, TrackB->Position));
    ChangeColor(Color);
    //ColorBox1->Selected = Color;
}
//---------------------------------------------------------------------------

int __fastcall TfrmMain::RGB24To16(int R, int G, int B)
{
    return ( ((R >> 3) << 11) | ((G >> 2) << 5) | (B >> 3) );
}
//---------------------------------------------------------------------------

