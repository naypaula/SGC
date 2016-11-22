unit TestUUsuarioVO;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, SysUtils, Atributos, UGenericVO, Generics.Collections, Classes,
  UUsuarioVO, Constantes, UPessoasVO;

type
  // Test methods for class TUsuarioVO

  TestTUsuarioVO = class(TTestCase)
  strict private
    FUsuarioVO: TUsuarioVO;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestValidarCamposObrigatorios;
    procedure TestValidarCamposObrigatoriosNaoEncontrado;
  end;

implementation

procedure TestTUsuarioVO.SetUp;
begin
  FUsuarioVO := TUsuarioVO.Create;
end;

procedure TestTUsuarioVO.TearDown;
begin
  FUsuarioVO.Free;
  FUsuarioVO := nil;
end;

procedure TestTUsuarioVO.TestValidarCamposObrigatorios;
var
  Usuario : TUsuarioVO;
begin
  Usuario := TUsuarioVo.Create;
  Usuario.idPessoa := 36;
  Usuario.Login := 'naay';
  Usuario.senha := '123';
 try
     Usuario.ValidarCamposObrigatorios;
     Check(true,'Sucesso!')
  except on E: Exception do
     Check(false,'Erro!');
  end;
end;

procedure TestTUsuarioVO.TestValidarCamposObrigatoriosNaoEncontrado;
var
  Usuario : TUsuarioVO;
begin
  Usuario := TUsuarioVo.Create;
  Usuario.idPessoa := 0;
  Usuario.Login := '';
  Usuario.senha := '';
 try
     Usuario.ValidarCamposObrigatorios;
     Check(false,'Erro!')
  except on E: Exception do
     Check(true,'Sucesso!');
  end;
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTUsuarioVO.Suite);
end.

