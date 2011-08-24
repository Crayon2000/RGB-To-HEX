//---------------------------------------------------------------------------
#ifndef MainH
#define MainH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Dialogs.hpp>
#include <Menus.hpp>
#include <ActnList.hpp>
#include <StdActns.hpp>
//---------------------------------------------------------------------------
class TfrmMain : public TForm
{
    typedef TForm inherited;

__published:    // IDE-managed Components
    TEdit *txtR;
    TEdit *txtG;
    TEdit *txtB;
    TLabel *lblR;
    TLabel *lblG;
    TLabel *lblB;
    TTrackBar *TrackR;
    TLabel *lblTitre;
    TTrackBar *TrackG;
    TTrackBar *TrackB;
    TButton *cmdClipboard24;
    TEdit *txtHEX24;
    TColorBox *ColorBox1;
    TColorDialog *ColorDialog1;
    TPopupMenu *PopupMenu1;
    TMenuItem *BrowseColor1;
    TPanel *RGBColor;
    TActionList *ActionList1;
    TEditCopy *EditCopy1;
    TEditDelete *EditDelete1;
    TPopupMenu *PopupMenu2;
    TMenuItem *Copy1;
    TMenuItem *Delete1;
    TEdit *txtHEX16;
    TLabel *lblHighcolor;
    TLabel *lblTruecolor;
    TButton *cmdClipboard16;
    TButton *cmdColorPicker;
    TLabel *lblRGBA;
    TButton *cmdClipboard32;
    TEdit *txtHEX32;
    void __fastcall TrackRChange(TObject *Sender);
    void __fastcall TrackGChange(TObject *Sender);
    void __fastcall TrackBChange(TObject *Sender);
    void __fastcall cmdClipboard24Click(TObject *Sender);
    void __fastcall ColorBox1Change(TObject *Sender);
    void __fastcall txtRChange(TObject *Sender);
    void __fastcall txtGChange(TObject *Sender);
    void __fastcall txtBChange(TObject *Sender);
    void __fastcall BrowseColor1Click(TObject *Sender);
    void __fastcall cmdClipboard16Click(TObject *Sender);
    void __fastcall FormMouseUp(TObject *Sender, TMouseButton Button, TShiftState Shift,
          int X, int Y);
    void __fastcall cmdColorPickerMouseDown(TObject *Sender, TMouseButton Button,
          TShiftState Shift, int X, int Y);
    void __fastcall FormMouseMove(TObject *Sender, TShiftState Shift, int X, int Y);
    void __fastcall cmdClipboard32Click(TObject *Sender);
private:    // User declarations
    int __fastcall RGB24To16(int, int, int);
protected:
    void __fastcall WndProc(Messages::TMessage &Message);
public:     // User declarations
    __fastcall TfrmMain(TComponent* Owner);
    void __fastcall ChangeColor(TColor);
    void __fastcall TrackChange();
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmMain *frmMain;
//---------------------------------------------------------------------------
#endif
