unit UPrecoGas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UtelaCadastro, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, UPrecoGasVO,
  Generics.Collections, UPrecoGasController, UEmpresaTrab;

type
  TFTelaCadastroPrecoGas = class(TFTelaCadastro)
    MaskEditDtInicio: TMaskEdit;
    Label1: TLabel;
    EdtValor: TEdit;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    function DoSalvar: boolean; override;
    function MontaFiltro: string;
    procedure DoConsultar; override;
    function DoExcluir: boolean; override;
    procedure BitBtnNovoClick(Sender: TObject);
    procedure GridParaEdits; override;
  private
    { Private declarations }
  public
    { Public declarations }
     function EditsToObject(PrecoGas: TPrecoGasVO): TPrecoGasVO;
  end;

var
  FTelaCadastroPrecoGas: TFTelaCadastroPrecoGas;
  PrecoGasController : TPrecoGasController;

implementation

{$R *.dfm}

{ TFTelaCadastro1 }

procedure TFTelaCadastroPrecoGas.BitBtnNovoClick(Sender: TObject);
begin
  inherited;
  MaskEditDtInicio.SetFocus;
end;

procedure TFTelaCadastroPrecoGas.DoConsultar;
var
  listaPrecoGas: TObjectList<TPrecoGasVo>;
  filtro: string;
begin
  filtro := MontaFiltro;
  listaPrecoGas := PrecoGasController.Consultar(filtro);
  PopulaGrid<TPrecoGasVo>(listaPrecoGas);
end;

function TFTelaCadastroPrecoGas.DoExcluir: boolean;
var
  PrecoGas : TPrecoGasVo;
begin
  try
    try
      PrecoGas := TPrecoGasVo.Create;
      PrecoGas.idPrecoGas := CDSGrid.FieldByName('IDPRECOGAS')
        .AsInteger;
      PrecoGasController.Excluir(PrecoGas);
    except
      on E: Exception do
      begin
        ShowMessage('Ocorreu um erro ao excluir o registro: ' + #13 + #13 +
          E.Message);
        Result := false;
      end;
    end;
  finally
  end;
end;


function TFTelaCadastroPrecoGas.DoSalvar: boolean;
var
  PrecoGas : TPrecoGasVo;
begin
  begin
    PrecoGas:=EditsToObject(TPrecoGasVo.Create);
    try
      try
        if (PrecoGas.ValidarCamposObrigatorios()) then
        begin
           if (StatusTela = stInserindo) then
           begin
              PrecoGas.idcondominio := FormEmpresaTrab.CodigoEmpLogada;
              PrecoGasController.Inserir(PrecoGas);
              Result := true;
           end
            else if (StatusTela = stEditando) then
             begin
            PrecoGas := PrecoGasController.ConsultarPorId(CDSGrid.FieldByName('IDPRECOGAS')
              .AsInteger);
            PrecoGas := EditsToObject(PrecoGas);
            PrecoGasController.Alterar(PrecoGas);
            Result := true;
          end;
        end
        else
          Result := false;
      except
        on E: Exception do
        begin
          ShowMessage(E.Message);
          Result := false;
        end;
      end;
    finally
    end;
end;
end;

function TFTelaCadastroPrecoGas.EditsToObject(PrecoGas: TPrecoGasVO): TPrecoGasVO;
begin
  PrecoGas.vlGas := StrToFloat(EdtValor.Text);
  PrecoGas.dtMesAno := StrToDateTime(MaskEditDtInicio.Text);
  Result := PrecoGas;
end;

procedure TFTelaCadastroPrecoGas.FormCreate(Sender: TObject);
begin
  ClasseObjetoGridVO := TPrecoGasVO;
  inherited;
end;

procedure TFTelaCadastroPrecoGas.GridParaEdits;
var
  PrecoGas: TPrecoGasVO;
begin
  inherited;
  if not CDSGrid.IsEmpty then
    PrecoGas := PrecoGasController.ConsultarPorId
      (CDSGrid.FieldByName('IDPRECOGAS').AsInteger);

  if Assigned(PrecoGas) then
  begin
    EdtValor.Text := FloatToStr(PrecoGas.vlGas);
    MaskEditDtInicio.Text := DateTimeToStr(PrecoGas.dtMesAno);
  end;
end;

function TFTelaCadastroPrecoGas.MontaFiltro: string;
begin
    result := '';
end;

end.
