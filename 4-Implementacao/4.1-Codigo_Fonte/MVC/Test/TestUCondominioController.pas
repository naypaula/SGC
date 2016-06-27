unit TestUCondominioController;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, UCidadeController, UCondominioVO, SysUtils, DBClient, DBXJSON,
  UPessoasVO, UCondominioController, UNaturezaJuridicaVO, DBXCommon,
  Generics.Collections, UCnaeVO, UController, DB, Classes, ConexaoBD, SQLExpr;

type
  // Test methods for class TCondominioController

  TestTCondominioController = class(TTestCase)
  strict private
    FCondominioController: TCondominioController;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestConsultarPorId;
  end;

implementation

procedure TestTCondominioController.SetUp;
begin
  FCondominioController := TCondominioController.Create;
end;

procedure TestTCondominioController.TearDown;
begin
  FCondominioController.Free;
  FCondominioController := nil;
end;

procedure TestTCondominioController.TestConsultarPorId;
var
  ReturnValue: TCondominioVO;
 // id: Integer;
begin
  ReturnValue := FCondominioController.ConsultarPorId(8);
  if(returnvalue <> nil)  then
    check(true,'Condom�nio  pesquisado com sucesso!')
  else
    check(false,'Condom�nio n�o encontrado!');

end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTCondominioController.Suite);
end.

