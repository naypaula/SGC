unit TestULancamentoContabilController;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, UContasPagarVO, UCondominioVO, SysUtils, DBClient, DBXJSON, UPessoasVO,
  UCondominioController, DBXCommon, UHistoricoVO, ULancamentoContabilController,
  UPlanoCOntasController, UPessoasController, Generics.Collections, Classes,
  UController, UContasReceberVo, DB, UPlanoContasVO, ULancamentoContabilVo, ConexaoBD,
  SQLExpr, ULoteVO;

type
  // Test methods for class TLancamentoContabilController

  TestTLancamentoContabilController = class(TTestCase)
  strict private
    FLancamentoContabilController: TLancamentoContabilController;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConsultarPorId;
    procedure TestConsultaPorIdNaoEncontrado;
  end;

implementation

procedure TestTLancamentoContabilController.SetUp;
begin
  FLancamentoContabilController := TLancamentoContabilController.Create;
end;

procedure TestTLancamentoContabilController.TearDown;
begin
  FLancamentoContabilController.Free;
  FLancamentoContabilController := nil;
end;

procedure TestTLancamentoContabilController.TestConsultaPorIdNaoEncontrado;
var
  ReturnValue: TLancamentoContabilVO;
begin
  ReturnValue := FLancamentoContabilController.ConsultarPorId(1);
  if(returnvalue <> nil)  then
    check(false,'Lancamento pesquisado com sucesso!')
  else
    check(true,'Lancamento nao encontrado!');
end;


procedure TestTLancamentoContabilController.TestConsultarPorId;
var
  ReturnValue: TLancamentoContabilVO;
begin
  ReturnValue := FLancamentoContabilController.ConsultarPorId(100);
  if(returnvalue <> nil)  then
    check(True,'Lancamento pesquisado com sucesso!')
  else
    check(False,'Lancamento nao encontrado!');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTLancamentoContabilController.Suite);
end.

