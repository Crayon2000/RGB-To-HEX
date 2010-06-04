//---------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "About.h"
//--------------------------------------------------------------------- 
#pragma resource "*.dfm"
TAboutBox *AboutBox;
//--------------------------------------------------------------------- 
__fastcall TAboutBox::TAboutBox(TComponent* AOwner)
	: TForm(AOwner)
{
    ProgramIcon->Picture->Icon->Handle = LoadImage(HInstance,
                                            "MAINICON",
                                            IMAGE_ICON,
                                            48, 48,
                                            LR_DEFAULTSIZE);

    ProductName->Font->Style = TFontStyles() << fsBold;
}
//---------------------------------------------------------------------

