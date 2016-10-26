unit ULancamentoContabilController;

interface

uses
  Classes, SQLExpr, SysUtils, Generics.Collections, DBXJSON, DBXCommon,
  ConexaoBD,
   UPessoasVO, UController, DBClient, DB,  UPessoasController, UCondominioController,
   UPlanoCOntasController, UCondominioVO, UPlanoContasVO, UHistoricoVO, ULancamentoContabilVo,
   UContasReceberVo, UContasPagarVO, ULoteVO;


type
  TLancamentoContabilController = class(TController<TLancamentoContabilVO>)
  private

  public
    function ConsultarPorId(id: integer): TLancamentoContabilVO;
    procedure ValidarDados(Objeto:TLancamentoContabilVO);override;
  end;

implementation

uses
  UDao, Constantes, Vcl.Dialogs;

function TLancamentoContabilController.ConsultarPorId(id: integer): TLancamentoContabilVO;
var
  P: TLancamentoContabilVO;
  condominioController : TCondominioController;

begin
  P := TDAO.ConsultarPorId<TLancamentoContabilVO>(id);


  if (P <> nil) then
  begin
      p.CondominioVO := TDAO.ConsultarPorId<TCondominioVO>(P.IdCondominio);
      p.ContaDebitoVo := TDao.ConsultarPorId<TPlanoContasVO>(P.idcontadebito);
      p.ContaCreditoVO := TDAO.ConsultarPorId<TPlanoContasVO>(P.idContaCredito);
      p.ContasReceberVO := TDAO.ConsultarPorId<TContasReceberVO>(p.idContasReceber);
      P.ContasPagarVo := TDAO.ConsultarPorId<TContasPagarVO>(p.idContasPagar);
      p.HistoricoVO := TDAO.ConsultarPorId<THistoricoVO>(p.idHistorico);
      p.LoteVO := TDAO.ConsultarPorId<TLoteVO>(p.idLote);
  end;

  result := P;

end;

procedure TLancamentoContabilController.ValidarDados(
  Objeto: TLancamentoContabilVO);
begin
  inherited;

end;

end.
