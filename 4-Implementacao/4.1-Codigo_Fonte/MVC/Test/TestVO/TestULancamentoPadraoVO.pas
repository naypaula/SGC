unit TestULancamentoPadraoVO;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, SysUtils, Atributos, UCondominioVO, Generics.Collections, UGenericVO,
  Classes, ULoteVO, Constantes, UhistoricoVO, UContasPagarVO, UPlanoContasVO,
  ULancamentoPadraoVO, UContasReceberVO;

type
  // Test methods for class TLancamentoPadraoVO

  TestTLancamentoPadraoVO = class(TTestCase)
  strict private
    FLancamentoPadraoVO: TLancamentoPadraoVO;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestValidarCamposObrigatorios;
    procedure TestValidarCamposObrigatoriosNaoEncontrado;

  end;

implementation

procedure TestTLancamentoPadraoVO.SetUp;
begin
  FLancamentoPadraoVO := TLancamentoPadraoVO.Create;
end;

procedure TestTLancamentoPadraoVO.TearDown;
begin
  FLancamentoPadraoVO.Free;
  FLancamentoPadraoVO := nil;
end;

procedure TestTLancamentoPadraoVO.TestValidarCamposObrigatorios;
var
  LP : TLancamentoPadraoVO;
begin
  Lp := TLancamentoPadraoVO.Create;
  lP.idcontadebito := 4;
  lp.idContaCredito := 4;
  lp.observacao := 'Teste';
  lp.idHistorico := 1;
  try
     Lp.ValidarCamposObrigatorios;
     Check(true,'Sucesso!')
  except on E: Exception do
     Check(false,'Erro!');
  end;
end;

procedure TestTLancamentoPadraoVO.TestValidarCamposObrigatoriosNaoEncontrado;
var
  LP : TLancamentoPadraoVO;
begin
  Lp := TLancamentoPadraoVO.Create;
  lP.idcontadebito := 4;
  lp.idContaCredito := 4;
  lp.observacao := '';
  lp.idhistorico := 1;
  try
     Lp.ValidarCamposObrigatorios;
     Check(false,'Erro!')
  except on E: Exception do
     Check(true,'Sucesso!');
  end;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTLancamentoPadraoVO.Suite);
end.

