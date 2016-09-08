unit UPlanoContasController;

interface

uses
  Classes, SQLExpr, SysUtils, Generics.Collections, DBXJSON, DBXCommon,
  ConexaoBD,
  UPessoasVO, UController, DBClient, DB, UPlanoContasVO, UPessoasController, UCondominioController, UUnidadeController;


type
  TPlanoContasController = class(TController<TPlanoContasVO>)
  private

  public
    function ConsultarPorId(id: integer): TPlanoContasVO;
  end;

implementation

uses
  UDao, Constantes, Vcl.Dialogs;

function TPlanoContasController.ConsultarPorId(id: integer): TPlanoContasVO;
var
  P: TPlanoContasVO;
  unidadeController : TUnidadeController;
  condominioController : TCondominioController;
  pessoaController : TPessoasController;

begin
  P := TDAO.ConsultarPorId<TPlanoContasVO>(id);
  unidadeController := TUnidadeController.Create;
  condominioController := TCondominioController.Create;
  pessoaController := TPessoasController.Create;


  if (P <> nil) then
  begin
      p.UnidadeVO := unidadeController.ConsultarPorId(p.idUnidade);
      p.CondominioVO := condominioController.ConsultarPorId(p.idcondominio);
  //    p.idPessoa := TPessoaVO.

  end;
  unidadeController.Free;
  condominioController.Free;
 // pessoaController.Free;
  result := P;
end;
begin


end.
