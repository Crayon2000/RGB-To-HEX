//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include <tchar.h>
USEFORM("Main.cpp", frmMain);
USEFORM("About.cpp", AboutBox);
//---------------------------------------------------------------------------
WINAPI _tWinMain(HINSTANCE, HINSTANCE, LPTSTR, int)
{
    try
    {
        Application->Initialize();
        Application->Title = "RGB To Hex";
        Application->CreateForm(__classid(TfrmMain), &frmMain);
        Application->CreateForm(__classid(TAboutBox), &AboutBox);
        Application->Run();
    }
    catch (Exception &exception)
    {
        Application->ShowException(&exception);
    }
    return 0;
}
//---------------------------------------------------------------------------
