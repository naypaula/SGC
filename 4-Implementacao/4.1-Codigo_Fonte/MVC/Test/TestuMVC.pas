unit TestuMVC;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit
  being tested.

}

interface

uses
  TestFramework, System.SysUtils, Vcl.Graphics, Winapi.Windows, System.Variants,
  Vcl.Menus, Vcl.Dialogs, Vcl.Controls, Vcl.Forms, Winapi.Messages,
  System.Classes, uMVC, ULogin;

type
  // Test methods for class TFormMenu

  TestTFormMenu = class(TTestCase)
  strict private
    FFormMenu: TFormMenu;
  public
    procedure SetUp; override;
    procedure TearDown; override;
    procedure TestDoLogin;
  published
    procedure TestFormCreate;
    procedure TestPessoa1Click;
    procedure TestSair1Click;
    procedure TestPas1Click;
    procedure TestCnae1Click;
    procedure TestNaturezaJurdica1Click;
    procedure TestEstado1Click;
    procedure TestCidade1Click;
    procedure TestCondomnio1Click;
  end;

implementation

procedure TestTFormMenu.SetUp;
begin
  FFormMenu := TFormMenu.Create;
end;

procedure TestTFormMenu.TearDown;
begin
  FFormMenu.Free;
  FFormMenu := nil;
end;

procedure TestTFormMenu.TestFormCreate;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.FormCreate(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestPessoa1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Pessoa1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestSair1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Sair1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestPas1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Pas1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestCnae1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Cnae1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestNaturezaJurdica1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.NaturezaJurdica1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestEstado1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Estado1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestCidade1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Cidade1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestCondomnio1Click;
var
  Sender: TObject;
begin
  // TODO: Setup method call parameters
  FFormMenu.Condomnio1Click(Sender);
  // TODO: Validate method results
end;

procedure TestTFormMenu.TestDoLogin;
var
  ReturnValue: Boolean;
begin
  ReturnValue := FFormMenu.DoLogin;
  // TODO: Validate method results
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTFormMenu.Suite);
end.

