object BMI: TBMI
  Left = 0
  Top = 0
  Hint = 'Qui si deve inserire la massa muscolare in percentuale'
  Caption = 'Calcolo Body Mass Index con altezza vera'
  ClientHeight = 656
  ClientWidth = 735
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 13
  object Altezza_sbarra: TLabel
    Left = 24
    Top = 24
    Width = 119
    Height = 13
    Caption = 'Altezza alla sbarra in cm.'
  end
  object Altezza_vera: TLabel
    Left = 352
    Top = 24
    Width = 91
    Height = 13
    Caption = 'Altezza vera in cm.'
  end
  object Label_Peso_Corporeo: TLabel
    Left = 24
    Top = 88
    Width = 99
    Height = 13
    Caption = 'Peso corporeo in Kg.'
  end
  object Label_Body_Mass_Index: TLabel
    Left = 352
    Top = 96
    Width = 111
    Height = 13
    Caption = 'Body Mass Index (BMI)'
  end
  object Label_Valutazione_BMI: TLabel
    Left = 352
    Top = 152
    Width = 76
    Height = 13
    Caption = 'Valutazione BMI'
  end
  object Label_Inserimento_Sesso: TLabel
    Left = 200
    Top = 157
    Width = 92
    Height = 13
    Caption = 'Selezionare il sesso'
  end
  object Label_Eta: TLabel
    Left = 24
    Top = 152
    Width = 50
    Height = 13
    Caption = 'Et'#224' in anni'
  end
  object Label_Massa_Grassa: TLabel
    Left = 24
    Top = 216
    Width = 171
    Height = 13
    Caption = 'Massa Grassa in percentuale     (%)'
  end
  object Label_Valutazione_Massa_Grassa: TLabel
    Left = 352
    Top = 216
    Width = 124
    Height = 13
    Caption = 'Valutazione Massa Grassa'
  end
  object Label_Massa_Muscolare: TLabel
    Left = 24
    Top = 272
    Width = 174
    Height = 13
    Caption = 'Massa Muscolare in percentuale (%)'
  end
  object Label_Valutazione_Massa_Muscolare: TLabel
    Left = 352
    Top = 272
    Width = 139
    Height = 13
    Caption = 'Valutazione massa muscolare'
  end
  object Label_Acqua_Corporea: TLabel
    Left = 24
    Top = 328
    Width = 174
    Height = 13
    Caption = 'Acqua Corporea in percentuale  (%)'
  end
  object Label_Valutazione_Acqua_Corporea: TLabel
    Left = 352
    Top = 328
    Width = 136
    Height = 13
    Caption = 'Valutazione Acqua Corporea'
  end
  object Label_Test_Angolo_e_Distanza: TLabel
    Left = 168
    Top = 400
    Width = 264
    Height = 19
    Caption = 'Test dell'#39'angolo e della distanza'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label_Altezza_Oggetto_Osservato: TLabel
    Left = 24
    Top = 448
    Width = 203
    Height = 13
    Caption = 'Altezza oggetto osservato da sopra in cm.'
  end
  object Label_Angolo_sotto_cui_si_osserva_oggetto: TLabel
    Left = 280
    Top = 448
    Width = 211
    Height = 13
    Caption = 'Angolo sotto cui si osserva l'#39'oggetto in gradi'
  end
  object Label_Distanza: TLabel
    Left = 24
    Top = 520
    Width = 193
    Height = 13
    Caption = 'Distanza a cui si osserva l'#39'oggetto in cm.'
  end
  object Label_Altezza_osservatore: TLabel
    Left = 280
    Top = 528
    Width = 127
    Height = 13
    Caption = 'Altezza osservatore in cm.'
  end
  object Altezza: TEdit
    Left = 24
    Top = 43
    Width = 119
    Height = 21
    Hint = 
      'Inserire l'#39'altezza alla sbarra o alla bilancia elettronica che m' +
      'isura del farmacista in centimetri (Es. 1,75 metri = 175 centime' +
      'tri)'
    BevelOuter = bvRaised
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Text = '175'
  end
  object BCalcola_Altezza_vera: TButton
    Left = 168
    Top = 24
    Width = 153
    Height = 49
    Cursor = crHandPoint
    Hint = 'Premere questo bottone per calcolare la vera altezza'
    Caption = 'Calcola  altezza vera'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnClick = BCalcola_Altezza_veraClick
  end
  object Altezza_totale: TEdit
    Left = 352
    Top = 40
    Width = 137
    Height = 21
    Hint = 
      'Questa casella contiene la vostra vera altezza in centimetri e n' +
      'on ci si pu'#242' digitare'
    TabStop = False
    NumbersOnly = True
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 2
  end
  object Peso_corporeo: TEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    Hint = 
      'In questa casella si deve inserire il peso corporeo in chili (Kg' +
      '.)'
    BiDiMode = bdLeftToRight
    NumbersOnly = True
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object Button_Calcola_BMI: TButton
    Left = 168
    Top = 94
    Width = 153
    Height = 57
    Cursor = crHandPoint
    Hint = 'Premere qui per calcolare il Body Mass Index'
    Caption = 'Calcola Body Mass Index'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button_Calcola_BMIClick
  end
  object Body_Mass_Index: TEdit
    Left = 352
    Top = 120
    Width = 137
    Height = 21
    Hint = 'Qui '#232' calcolato il Body Mass Index e non ci si pu'#242' digitare'
    TabStop = False
    MaxLength = 5
    NumbersOnly = True
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 5
    OnChange = Body_Mass_IndexChange
  end
  object Valutazione_BMI: TEdit
    Left = 352
    Top = 176
    Width = 137
    Height = 21
    Hint = 
      'Questa casella contiene la valutazione del Body Mass Index (BMI)' +
      ' e non pu'#242' essere modificata'
    TabStop = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 6
  end
  object Maschio: TRadioButton
    Left = 219
    Top = 176
    Width = 73
    Height = 15
    Cursor = crHandPoint
    Hint = 'Qui si seleziona il sesso'
    Caption = 'Maschio'
    Checked = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    TabStop = True
    OnClick = MaschioClick
  end
  object Femmina: TRadioButton
    Left = 219
    Top = 197
    Width = 78
    Height = 17
    Cursor = crHandPoint
    Hint = 'Qui si seleziona il sesso'
    Caption = 'Femmina'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnClick = FemminaClick
  end
  object Eta: TEdit
    Left = 24
    Top = 176
    Width = 105
    Height = 21
    Hint = 'Qui bisogna inserire l'#39'et'#224' anagrafica'
    DoubleBuffered = False
    ParentDoubleBuffered = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
    OnChange = EtaChange
  end
  object Massa_Grassa: TEdit
    Left = 24
    Top = 240
    Width = 174
    Height = 21
    Hint = 'Qui bisogna inserire la massa grassa in percentuale (%)'
    NumbersOnly = True
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnChange = Massa_GrassaChange
  end
  object Valutazione_Massa_Grassa: TEdit
    Left = 352
    Top = 240
    Width = 137
    Height = 21
    Hint = 
      'Qui c'#39#232' la valutazione della massa grassa e non ci si pu'#242' digita' +
      're'
    ParentCustomHint = False
    TabStop = False
    ParentShowHint = False
    ReadOnly = True
    ShowHint = True
    TabOrder = 11
  end
  object Massa_Muscolare: TEdit
    Left = 24
    Top = 296
    Width = 174
    Height = 21
    NumbersOnly = True
    TabOrder = 12
    OnChange = Massa_MuscolareChange
  end
  object Valutazione_Massa_Muscolare: TEdit
    Left = 352
    Top = 291
    Width = 137
    Height = 21
    Hint = 'Qui si valuta la massa muscolare e non ci si pu'#242' digitare'
    TabStop = False
    ReadOnly = True
    TabOrder = 13
  end
  object Acqua_corporea: TEdit
    Left = 24
    Top = 352
    Width = 174
    Height = 21
    Hint = 'Qui bisogna inserire l'#39'acqua corporea in percentuale'
    NumbersOnly = True
    TabOrder = 14
    OnChange = Acqua_corporeaChange
  end
  object Valutazione_Acqua_Corporea: TEdit
    Left = 352
    Top = 352
    Width = 137
    Height = 21
    Hint = 'Qui si valuta l'#39'acqua corporea e non ci si pu'#242' digitare'
    TabStop = False
    ReadOnly = True
    TabOrder = 15
  end
  object Altezza_oggetto_osservato_da_sopra: TEdit
    Left = 24
    Top = 480
    Width = 203
    Height = 21
    Hint = 'Qui si inserisce l'#39'altezza vista da sopra in centimetri'
    NumbersOnly = True
    TabOrder = 16
    OnChange = Altezza_oggetto_osservato_da_sopraChange
  end
  object Angolo_sotto_cui_si_osserva_oggetto: TEdit
    Left = 280
    Top = 480
    Width = 209
    Height = 21
    Hint = 
      'Qui si inserisce l'#39'angolo sotto cui si osserva l'#39'oggetto da sopr' +
      'a in gradi (Es. 100'#176'0'#39'=1000, 15'#176'2'#39' =152)'
    NumbersOnly = True
    TabOrder = 17
    OnChange = Angolo_sotto_cui_si_osserva_oggettoChange
  end
  object Distanza: TEdit
    Left = 24
    Top = 552
    Width = 201
    Height = 21
    Hint = 'Distanza a cui si osserva l'#39'oggetto da sopra in centimetri'
    NumbersOnly = True
    TabOrder = 18
    OnChange = DistanzaChange
  end
  object Altezza_osservatore: TEdit
    Left = 280
    Top = 552
    Width = 209
    Height = 21
    Hint = 
      'Qui c'#39#232' l'#39'altezza dell'#39'osservatore in centimetri e non ci si pu'#242 +
      ' digitare'
    TabStop = False
    ReadOnly = True
    TabOrder = 19
  end
  object ListBox1: TListBox
    Left = 520
    Top = 40
    Width = 169
    Height = 145
    ItemHeight = 13
    Items.Strings = (
      'Ragione per cui vengono '
      'aggiunti 100 centimetri'
      ''
      'All'#39'altezza alla sbarra viene'
      'aggiunto 100 (100 centimetri), '
      'in quanto quell'#39'altezza'
      'arriva alle gambe. In questo modo'
      #232' possibile vederla da sopra '
      'anche da lontano ad alcuni'
      'metri di distanza.')
    TabOrder = 20
  end
  object ListBox2: TListBox
    Left = 520
    Top = 208
    Width = 201
    Height = 201
    Hint = 'R'
    ItemHeight = 13
    Items.Strings = (
      'COME SI CALCOLA L'#39'ANGOLO SOTTO'
      'CUI SI OSSERVA L'#39'OGGETTO DA '
      'SOPRA'
      ''
      'Per calcolare l'#39'angolo sotto cui si osserva'
      ' l'#39'oggetto da sopra, baster'#224' immaginare'
      ' un cono che idealmente ha la sua punta'
      ' nell'#39'apice corneale e la sua base'
      ' sull'#39'oggetto visto da sopra, l'#39'angolo'
      'che si verr'#224' a formare alla base,'
      ' sar'#224' l'#39'angolo sotto cui si vede l'#39'oggetto.')
    TabOrder = 21
  end
  object ListBox3: TListBox
    Left = 520
    Top = 440
    Width = 201
    Height = 193
    ItemHeight = 13
    Items.Strings = (
      'FORMULA PER IL CALCOLO'
      'DELL'#39'ANGOLO E DELLA DISTANZA'
      ''
      'Altezza oggetto osservato +'
      '[(Angolo:1000) x (Distanza x 10)]')
    TabOrder = 22
  end
end
