unit uMVC;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ULogin, Vcl.Menus;
type
    TFormMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Pessoa1: TMenuItem;
    Sair1: TMenuItem;
    Pas1: TMenuItem;
    Cnae1: TMenuItem;
    NaturezaJurdica1: TMenuItem;
    Estado1: TMenuItem;
    Cidade1: TMenuItem;
    Condomnio1: TMenuItem;
    CadastrosAuxiliares1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Unidades1: TMenuItem;
    EmpresaTrabalho1: TMenuItem;
    otalGastoMs1: TMenuItem;
    PreoGs1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Pas1Click(Sender: TObject);
    procedure Cnae1Click(Sender: TObject);
    procedure NaturezaJurdica1Click(Sender: TObject);
    procedure Estado1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Condomnio1Click(Sender: TObject);
    procedure Unidades1Click(Sender: TObject);
    procedure EmpresaTrabalho1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure otalGastoMs1Click(Sender: TObject);
    procedure PreoGs1Click(Sender: TObject);
  private
    { Private declarations }
  public

    { Public declarations }

    function DoLogin: Boolean;

  end;

var
  FormMenu: TFormMenu;

implementation

{$R *.dfm}

uses Upessoa, UPais, UCnae, UNaturezaJuridica, UEstado, UCidade, UCondominio, UUnidade, UEmpresaTrab,
UTotalGastoMes, UPrecoGas;


procedure TFormMenu.Cidade1Click(Sender: TObject);
var FormCidade:TTFTelaCadastroCidade;
begin
  Application.CreateForm(TTFTelaCadastroCidade,FormCidade);
  FormCidade.ShowModal;
  FormCidade.Close;
end;

procedure TFormMenu.Cnae1Click(Sender: TObject);
var FormCnae:TFTelaCadastroCnae;
begin
  Application.CreateForm(TFTelaCadastroCnae,FormCnae);
  FormCnae.ShowModal;
  FormCnae.Close;
end;

procedure TFormMenu.Condomnio1Click(Sender: TObject);
var FormCondominio:TFTelaCadastroCondominio;
begin
  Application.CreateForm(TFTelaCadastroCondominio,FormCondominio);
  FormCondominio.ShowModal;
  FormCondominio.Close;
end;

function TFormMenu.doLogin: Boolean;
var
  FormLogin: TFormLogin;
begin
  FormLogin := TFormLogin.Create(Self);
  try
    FormLogin.ShowModal;
    Result := FormLogin.Logado;
  finally
    FormLogin.Free;
  end;
end;


procedure TFormMenu.EmpresaTrabalho1Click(Sender: TObject);
begin
  FormEmpresaTrab.Visible:=true;
end;

procedure TFormMenu.Estado1Click(Sender: TObject);
var FormEstado:TFTelaCadastroEstado;
begin
  Application.CreateForm(TFTelaCadastroEstado,FormEstado);
  FormEstado.ShowModal;
  FormEstado.Close;
end;

procedure TFormMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFormMenu.FormCreate(Sender: TObject);
begin
  if not DoLogin then
    Application.Terminate
  else
  begin
      Application.CreateForm(TFormEmpresaTrab, FormEmpresaTrab);
      FormEmpresaTrab.ShowModal;
  end;
end;

procedure TFormMenu.NaturezaJurdica1Click(Sender: TObject);
var FormNaturezaJuridica:TFTelaCadastroNaturezaJuridica;
begin
  Application.CreateForm(TFTelaCadastroNaturezaJuridica,FormNaturezaJuridica);
  FormNaturezaJuridica.ShowModal;
  FormNaturezaJuridica.Close;
end;

procedure TFormMenu.otalGastoMs1Click(Sender: TObject);
var FormTotalGastoMes :TFTelaCadastroTotalGastoMes;
begin
  Application.CreateForm(TFTelaCadastroTotalGastoMes,FormTotalGastoMes);
  FormTotalGastoMes.ShowModal;
  FormTotalGastoMes.Close;
end;

procedure TFormMenu.Pas1Click(Sender: TObject);
var FormPais:TFTelaCadastroPais;
begin
  Application.CreateForm(TFTelaCadastroPais,FormPais);
  FormPais.ShowModal;
  FormPais.Close;
end;

procedure TFormMenu.Pessoa1Click(Sender: TObject);
var FormPessoa:TFTelaCadastroPessoa;
begin
  Application.CreateForm(TFTelaCadastroPessoa,FormPessoa);
  FormPessoa.ShowModal;
  FormPessoa.Close;
end;

procedure TFormMenu.PreoGs1Click(Sender: TObject);
var FormPrecoGas:TFTelaCadastroPrecoGas;
begin
  Application.CreateForm(TFTelaCadastroPrecoGas,FormPrecoGas);
  FormPrecoGas.ShowModal;
  FormPrecoGas.Close;
end;

procedure TFormMenu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFormMenu.Unidades1Click(Sender: TObject);
var FormUnidade:TFTelaCadastroUnidade;
begin
  Application.CreateForm(TFTelaCadastroUnidade,FormUnidade);
  FormUnidade.ShowModal;
  FormUnidade.Close;
end;

end.
