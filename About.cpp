//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "About.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TAboutBox *AboutBox;
//---------------------------------------------------------------------------
__fastcall TAboutBox::TAboutBox(TComponent* AOwner)
    : TForm(AOwner)
{
    ProgramIcon->Picture->Icon->Handle = (HICON)LoadImageW(HInstance,
                                            L"MAINICON",
                                            IMAGE_ICON,
                                            48, 48,
                                            LR_DEFAULTSIZE);

    ProductName->Font->Style = TFontStyles() << fsBold;
}
//---------------------------------------------------------------------------

