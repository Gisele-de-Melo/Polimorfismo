//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------

unit Unit1;

interface

uses
  Vcl.Forms, Vcl.Dialogs, Vcl.Controls, Vcl.StdCtrls, System.Classes;

type
  TForma = class
  public
    procedure Desenhar; virtual; // Método virtual
  end;

  TCirculo = class(TForma)
  public
    procedure Desenhar; override; // Sobrescrevendo o método Desenhar
  end;

  TRetangulo = class(TForma)
  public
    procedure Desenhar; override; // Sobrescrevendo o método Desenhar
  end;

  TForm1 = class(TForm)
    ButtonCirculo: TButton;
    ButtonRetangulo: TButton;
    procedure ButtonCirculoClick(Sender: TObject);
    procedure ButtonRetanguloClick(Sender: TObject);
  private
    procedure DesenharForma(Forma: TForma);
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForma }

procedure TForma.Desenhar;
begin
  ShowMessage('Desenhando uma forma genérica');
end;

{ TCirculo }

procedure TCirculo.Desenhar;
begin
  ShowMessage('Desenhando um círculo');
end;

{ TRetangulo }

procedure TRetangulo.Desenhar;
begin
  ShowMessage('Desenhando um retângulo');
end;

{ TForm1 }

procedure TForm1.ButtonCirculoClick(Sender: TObject);
var
  Circulo: TForma;
begin
  Circulo := TCirculo.Create;
  try
    DesenharForma(Circulo);
  finally
    Circulo.Free;
  end;
end;

procedure TForm1.ButtonRetanguloClick(Sender: TObject);
var
  Retangulo: TForma;
begin
  Retangulo := TRetangulo.Create;
  try
    DesenharForma(Retangulo);
  finally
    Retangulo.Free;
  end;
end;

procedure TForm1.DesenharForma(Forma: TForma);
begin
  Forma.Desenhar;
end;

end.
