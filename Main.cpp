//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Main.h"
#include "About.h"
#include <Clipbrd.hpp>
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmMain *frmMain;

static const TCursor crEyeDropper = 1;

//---------------------------------------------------------------------------
__fastcall TfrmMain::TfrmMain(TComponent* Owner)
        : TForm(Owner)
{
    const HMENU MySysMenu = GetSystemMenu(Handle, false);
    AppendMenu(MySysMenu, MF_SEPARATOR, 0, 0);
    AppendMenu(MySysMenu, MF_STRING | MF_ENABLED, 101, "About...");

    Screen->Cursors[crEyeDropper] = (HCURSOR)LoadImage(HInstance, "EYEDROPPER",
        IMAGE_CURSOR, 0, 0, LR_DEFAULTCOLOR);

    lblTitre->Font->Size = 24;
    lblTitre->Font->Style = TFontStyles() << fsBold;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackRChange(TObject *Sender)
{
    txtR->Text = TrackR->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackGChange(TObject *Sender)
{
    txtG->Text = TrackG->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::TrackBChange(TObject *Sender)
{
    txtB->Text = TrackB->Position;
    TrackChange();
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::cmdClipboard32Click(TObject *Sender)
{
    TClipboard *ClipBoard = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX32->Text.w_str());
    delete ClipBoard;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::cmdClipboard24Click(TObject *Sender)
{
    TClipboard *ClipBoard = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX24->Text.w_str());
    delete ClipBoard;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::cmdClipboard16Click(TObject *Sender)
{
    TClipboard *ClipBoard = new TClipboard();
    ClipBoard->SetTextBuf(txtHEX16->Text.w_str());
    delete ClipBoard;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::ColorBox1Change(TObject *Sender)
{
    ChangeColor(ColorBox1->Selected);
    txtR->Text = GetRValue(ColorBox1->Selected);
    txtG->Text = GetGValue(ColorBox1->Selected);
    txtB->Text = GetBValue(ColorBox1->Selected);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::txtRChange(TObject *Sender)
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

void __fastcall TfrmMain::txtGChange(TObject *Sender)
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

void __fastcall TfrmMain::txtBChange(TObject *Sender)
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

void __fastcall TfrmMain::BrowseColor1Click(TObject *Sender)
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
    txtHEX32->Text = txtHEX24->Text + "FF";
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

void __fastcall TfrmMain::cmdColorPickerMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y)
{
    Screen->Cursor = crEyeDropper;
    cmdColorPicker->Enabled = false;
    MouseCapture = true;
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::FormMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y)
{
    Screen->Cursor = crDefault;
    cmdColorPicker->Enabled = true;
    MouseCapture = False;

    SetForegroundWindow(Handle);
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::FormMouseMove(TObject *Sender, TShiftState Shift, int X,
          int Y)
{
    if(!cmdColorPicker->Enabled)
    {
        HDC MonitorHDC;
        if((MonitorHDC = GetDC(NULL)) != NULL)
        {
            POINT MousePos;
            COLORREF color;
            if(GetCursorPos(&MousePos) &&
               (color = GetPixel(MonitorHDC, MousePos.x, MousePos.y)) != CLR_INVALID)
            {
                ChangeColor((TColor)color);
                txtR->Text = GetRValue(color);
                txtG->Text = GetGValue(color);
                txtB->Text = GetBValue(color);
            }
            ReleaseDC(NULL, MonitorHDC);
        }
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmMain::MenuHandler(TMessage &Msg)
{
    if(Msg.WParam == 101)
    {
        AboutBox->ShowModal();
    }
    TForm::Dispatch(&Msg);
}
//---------------------------------------------------------------------------
