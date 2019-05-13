unit UBMI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;



type
  TBMI = class(TForm)
    Altezza: TEdit;
    Altezza_sbarra: TLabel;
    BCalcola_Altezza_vera: TButton;
    Altezza_totale: TEdit;
    Altezza_vera: TLabel;
    Label_Peso_Corporeo: TLabel;
    Peso_corporeo: TEdit;
    Button_Calcola_BMI: TButton;
    Label_Body_Mass_Index: TLabel;
    Body_Mass_Index: TEdit;
    Valutazione_BMI: TEdit;
    Label_Valutazione_BMI: TLabel;
    Label_Inserimento_Sesso: TLabel;
    Maschio: TRadioButton;
    Femmina: TRadioButton;
    Eta: TEdit;
    Label_Eta: TLabel;
    Label_Massa_Grassa: TLabel;
    Massa_Grassa: TEdit;
    Label_Valutazione_Massa_Grassa: TLabel;
    Valutazione_Massa_Grassa: TEdit;
    Massa_Muscolare: TEdit;
    Label_Massa_Muscolare: TLabel;
    Label_Valutazione_Massa_Muscolare: TLabel;
    Valutazione_Massa_Muscolare: TEdit;
    Acqua_corporea: TEdit;
    Label_Acqua_Corporea: TLabel;
    Label_Valutazione_Acqua_Corporea: TLabel;
    Valutazione_Acqua_Corporea: TEdit;
    Label_Test_Angolo_e_Distanza: TLabel;
    Label_Altezza_Oggetto_Osservato: TLabel;
    Altezza_oggetto_osservato_da_sopra: TEdit;
    Label_Angolo_sotto_cui_si_osserva_oggetto: TLabel;
    Angolo_sotto_cui_si_osserva_oggetto: TEdit;
    Label_Distanza: TLabel;
    Distanza: TEdit;
    Label_Altezza_osservatore: TLabel;
    Altezza_osservatore: TEdit;
    ListBox1: TListBox;
    ListBox2: TListBox;
    ListBox3: TListBox;
    procedure BCalcola_Altezza_veraClick(Sender: TObject);
    procedure Button_Calcola_BMIClick(Sender: TObject);
    procedure Body_Mass_IndexChange(Sender: TObject);
    procedure EtaChange(Sender: TObject);
    procedure Massa_GrassaChange(Sender: TObject);
    procedure Massa_MuscolareChange(Sender: TObject);
    procedure Acqua_corporeaChange(Sender: TObject);
    procedure MaschioClick(Sender: TObject);
    procedure FemminaClick(Sender: TObject);
    procedure Altezza_oggetto_osservato_da_sopraChange(Sender: TObject);
    procedure Angolo_sotto_cui_si_osserva_oggettoChange(Sender: TObject);
    procedure DistanzaChange(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BMI: TBMI;
  Altezza_numerica:longint;
  Altezza_numerica_totale:longint;
  Altezza_numerica_testo:string;
  Code:integer;
  Peso_numerico:real;
  IMC_numerico_testo:string;
  IMC:real;
  IMC_Intero:integer;
  Eta_numerica:integer;
  Massa_Grassa_numerica:integer;
  Massa_Muscolare_numerica:integer;
  Acqua_Corporea_numerica:integer;
  Differenza:real;
  Differenza_Intera:longint;
  Angolo:longint;
  Distanza_numerica:longint;
  Altezza_oggetto:longint;
  Altezza_totale_reale:real;
  Altezza_totale_intera:string;

implementation

{$R *.dfm}


procedure TBMI.Acqua_corporeaChange(Sender: TObject);
begin
Val (Acqua_Corporea.Text,Acqua_Corporea_numerica,Code);
If Maschio.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Acqua_corporea_numerica >64 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Acqua_corporea_numerica >63.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Acqua_corporea_numerica >62.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Acqua_corporea_numerica >61 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Acqua_corporea_numerica >60 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Acqua_corporea_numerica >59 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      Begin
        If Acqua_corporea_numerica >58 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End
   End;

   if Femmina.Checked then

   Begin
     If Eta_numerica<13 then
      Begin
        If Acqua_corporea_numerica >60 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Acqua_corporea_numerica >58.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Acqua_corporea_numerica >56 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Acqua_corporea_numerica >53 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Acqua_corporea_numerica >52 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Acqua_corporea_numerica >51 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      Begin
        If Acqua_corporea_numerica >50 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End
   End;

end;

procedure TBMI.Altezza_oggetto_osservato_da_sopraChange(Sender: TObject);
begin
Val (Angolo_sotto_cui_si_osserva_oggetto.Text,Angolo,Code);
Val (Distanza.Text,Distanza_numerica,Code);
Val (Altezza_oggetto_osservato_da_sopra.Text,Altezza_oggetto,Code);
Differenza:=(Angolo/1000)*(Distanza_numerica*10);
Altezza_totale_reale:=Differenza+Altezza_oggetto;
Str (Altezza_totale_reale:6:0,Altezza_totale_intera);
Altezza_osservatore.Text:=Altezza_totale_intera;
end;

procedure TBMI.Angolo_sotto_cui_si_osserva_oggettoChange(Sender: TObject);
begin
Val (Angolo_sotto_cui_si_osserva_oggetto.Text,Angolo,Code);
Val (Distanza.Text,Distanza_numerica,Code);
Val (Altezza_oggetto_osservato_da_sopra.Text,Altezza_oggetto,Code);
Differenza:=(Angolo/1000)*(Distanza_numerica*10);
Altezza_totale_reale:=Differenza+Altezza_oggetto;
Str (Altezza_totale_reale:6:0,Altezza_totale_intera);
Altezza_osservatore.Text:=Altezza_totale_intera;
end;

procedure TBMI.BCalcola_Altezza_veraClick(Sender: TObject);
begin
val(Altezza.Text,Altezza_numerica,Code);
Altezza_numerica_totale:=Altezza_numerica+100;
Str (Altezza_numerica_totale,Altezza_numerica_testo);
Altezza_totale.Text:=Altezza_numerica_testo;
end;

procedure TBMI.Body_Mass_IndexChange(Sender: TObject);
begin
If IMC<18 then Valutazione_BMI.Text:='Sottopeso' else
  If IMC<25 then Valutazione_BMI.Text:='Normopeso' else
  If IMC<30 then Valutazione_BMI.Text:='Sovrappeso' else
  If IMC<40 then Valutazione_BMI.Text:='Obesità moderata' else
  If IMC>40 then Valutazione_BMI.Text:='Obesità grave';
end;

procedure TBMI.Button_Calcola_BMIClick(Sender: TObject);
begin
if Altezza_totale.Text='' then
Begin
 ShowMessage ('Prima di inserire il peso calcolare la altezza vera')
End
 Else
  Begin
  val (Peso_corporeo.Text,Peso_numerico,Code);
  IMC:=1.3*Peso_numerico/(Altezza_numerica_totale*Altezza_numerica_totale+Altezza_numerica_totale)*7000;
  str (IMC:3:0,IMC_numerico_testo);
  Body_Mass_Index.Text:=IMC_numerico_testo;
  End;
end;

procedure TBMI.DistanzaChange(Sender: TObject);
begin
Val (Angolo_sotto_cui_si_osserva_oggetto.Text,Angolo,Code);
Val (Distanza.Text,Distanza_numerica,Code);
Val (Altezza_oggetto_osservato_da_sopra.Text,Altezza_oggetto,Code);
Differenza:=(Angolo/1000)*(Distanza_numerica*10);
Altezza_totale_reale:=Differenza+Altezza_oggetto;
Str (Altezza_totale_reale:6:0,Altezza_totale_intera);
Altezza_osservatore.Text:=Altezza_totale_intera;
end;

procedure TBMI.EtaChange(Sender: TObject);
begin
Val (Eta.Text,Eta_numerica,Code);
if Eta_numerica<10 then Showmessage ('Età non può essere minore di 10 anni');
end;

procedure TBMI.FemminaClick(Sender: TObject);
begin
Val (Massa_Grassa.Text,Massa_Grassa_numerica,Code);
  If Femmina.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Massa_grassa_numerica <12 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<24 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<31 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
     End

     Else

     If Eta_numerica<19 then
      Begin
        If Massa_grassa_numerica <15 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<26 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<34 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';

      End

      Else

      If Eta_numerica<31 then
       Begin
        If Massa_grassa_numerica <20 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<30 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<37 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

       Else

      If Eta_numerica<41 then
       Begin
        If Massa_grassa_numerica <22 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<32 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<39 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
       End

        Else

      If Eta_numerica<51 then
        Begin
        If Massa_grassa_numerica <24 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<34 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<41 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

      If Eta_numerica<61 then
        Begin
        If Massa_grassa_numerica <26 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<36 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<43 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

         Begin
        If Massa_grassa_numerica <28 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<38 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<48 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End;
       End;

       Val (Massa_Muscolare.Text,Massa_Muscolare_numerica,Code);
       If Femmina.Checked then
   Begin

   If Eta_numerica<13 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Massa_Muscolare_numerica <39 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Massa_Muscolare_numerica <38 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Massa_Muscolare_numerica <36 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      Begin
        If Massa_Muscolare_numerica <36 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End
   End;

   Val (Acqua_Corporea.Text,Acqua_Corporea_numerica,Code);
   if Femmina.Checked then

   Begin
     If Eta_numerica<13 then
      Begin
        If Acqua_corporea_numerica >60 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Acqua_corporea_numerica >58.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Acqua_corporea_numerica >56 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Acqua_corporea_numerica >53 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Acqua_corporea_numerica >52 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Acqua_corporea_numerica >51 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      Begin
        If Acqua_corporea_numerica >50 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End
   End;

end;

procedure TBMI.MaschioClick(Sender: TObject);
begin
  Val (Massa_Grassa.Text,Massa_Grassa_numerica,Code);
If Maschio.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';


     End

     Else

     If Eta_numerica<19 then
      Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';

      End

      Else

      If Eta_numerica<31 then
       Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

       Else

      If Eta_numerica<41 then
       Begin
        If Massa_grassa_numerica <11 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<21 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<27 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
       End

        Else

      If Eta_numerica<51 then
        Begin
        If Massa_grassa_numerica <13 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<23 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<29 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

      If Eta_numerica<61 then
        Begin
        If Massa_grassa_numerica <15 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<31 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

         Begin
        If Massa_grassa_numerica <17 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<27 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<35 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End;

    End;



       Val (Massa_Muscolare.Text,Massa_Muscolare_numerica,Code);
If Maschio.Checked then
   Begin

     If Eta_numerica<13 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Massa_Muscolare_numerica <43 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Massa_Muscolare_numerica <41 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End
   End;

   Val (Acqua_Corporea.Text,Acqua_Corporea_numerica,Code);
If Maschio.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Acqua_corporea_numerica >64 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Acqua_corporea_numerica >63.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Acqua_corporea_numerica >62.5 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Acqua_corporea_numerica >61 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Acqua_corporea_numerica >60 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Acqua_corporea_numerica >59 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End

      Else

      Begin
        If Acqua_corporea_numerica >58 then Valutazione_Acqua_Corporea.Text:='Normale' else
        Valutazione_Acqua_Corporea.Text:='Disidratato';
      End
   End;

end;

procedure TBMI.Massa_GrassaChange(Sender: TObject);
begin
Val (Massa_Grassa.Text,Massa_Grassa_numerica,Code);
If Maschio.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';


     End

     Else

     If Eta_numerica<19 then
      Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';

      End

      Else

      If Eta_numerica<31 then
       Begin
        If Massa_grassa_numerica <8 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<19 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

       Else

      If Eta_numerica<41 then
       Begin
        If Massa_grassa_numerica <11 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<21 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<27 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
       End

        Else

      If Eta_numerica<51 then
        Begin
        If Massa_grassa_numerica <13 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<23 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<29 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

      If Eta_numerica<61 then
        Begin
        If Massa_grassa_numerica <15 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<25 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<31 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

         Begin
        If Massa_grassa_numerica <17 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<27 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<35 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End;
       End;

     If Femmina.Checked then
   Begin
     If Eta_numerica<13 then
      Begin
        If Massa_grassa_numerica <12 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<24 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<31 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
     End

     Else

     If Eta_numerica<19 then
      Begin
        If Massa_grassa_numerica <15 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<26 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<34 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';

      End

      Else

      If Eta_numerica<31 then
       Begin
        If Massa_grassa_numerica <20 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<30 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<37 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

       Else

      If Eta_numerica<41 then
       Begin
        If Massa_grassa_numerica <22 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<32 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<39 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
       End

        Else

      If Eta_numerica<51 then
        Begin
        If Massa_grassa_numerica <24 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<34 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<41 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

      If Eta_numerica<61 then
        Begin
        If Massa_grassa_numerica <26 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<36 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<43 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End

         Else

         Begin
        If Massa_grassa_numerica <28 then Valutazione_massa_grassa.Text:='Bassa' else
              If Massa_Grassa_numerica<38 then Valutazione_massa_grassa.Text:='Normale' else
              If Massa_Grassa_numerica<48 then Valutazione_massa_grassa.Text:='Alta' else
              Valutazione_massa_grassa.Text:='Molto alta';
        End;
       End;
end;

procedure TBMI.Massa_MuscolareChange(Sender: TObject);
begin
Val (Massa_Muscolare.Text,Massa_Muscolare_numerica,Code);
If Maschio.Checked then
   Begin

     If Eta_numerica<13 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Massa_Muscolare_numerica <45 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Massa_Muscolare_numerica <43 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Massa_Muscolare_numerica <41 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End
   End;

   If Femmina.Checked then
   Begin

   If Eta_numerica<13 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<19 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<31 then
      Begin
        If Massa_Muscolare_numerica <40 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<41 then
      Begin
        If Massa_Muscolare_numerica <39 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<51 then
      Begin
        If Massa_Muscolare_numerica <38 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      If Eta_numerica<61 then
      Begin
        If Massa_Muscolare_numerica <36 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End

      Else

      Begin
        If Massa_Muscolare_numerica <36 then Valutazione_massa_muscolare.Text:='Normale' else
        Valutazione_massa_muscolare.Text:='Alta';
      End
   End;

end;

end.
