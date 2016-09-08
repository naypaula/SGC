unit TestUPlanoContasController;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, SysUtils, DBClient, DBXJSON, UPessoasController, UPessoasVO,
  UCondominioController, DBXCommon, UUnidadeController, UPlanoContasVO,
  UPlanoContasController, Classes, UController, DB, ConexaoBD, SQLExpr,
  Generics.Collections;

type
  // Test methods for class TPlanoContasController

  TestTPlanoContasController = class(TTestCase)
  strict private
    FPlanoContasController: TPlanoContasController;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConsultarPorId;
  end;

implementation

procedure TestTPlanoContasController.SetUp;
begin
  FPlanoContasController := TPlanoContasController.Create;
end;

procedure TestTPlanoContasController.TearDown;
begin
  FPlanoContasController.Free;
  FPlanoContasController := nil;
end;

procedure TestTPlanoContasController.TestConsultarPorId;
var
  ReturnValue: TPlanoContasVO;

begin

  ReturnValue := FPlanoContasController.ConsultarPorId(44);
  if(returnvalue = nil)  then
    check(true,'Plano de Contas  pesquisado com sucesso!')
  else
    check(false,'Plano de Contas n�o encontrado!');
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTPlanoContasController.Suite);
end.

