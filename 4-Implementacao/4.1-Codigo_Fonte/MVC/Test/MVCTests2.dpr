program MVCTests2;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  UCondominioController in '..\controle\UCondominioController.pas',
  DUnitTestRunner,
  UCidadeController in '..\controle\UCidadeController.pas',
  UCnaeController in '..\controle\UCnaeController.pas',
  UController in '..\controle\UController.pas',
  UEstadoController in '..\controle\UEstadoController.pas',
  UNaturezaJuridicaController in '..\controle\UNaturezaJuridicaController.pas',
  UPaisController in '..\controle\UPaisController.pas',
  UPessoasController in '..\controle\UPessoasController.pas',
  UProprietarioUnidadeController in '..\controle\UProprietarioUnidadeController.pas',
  UTotalGastoMesController in '..\controle\UTotalGastoMesController.pas',
  UUnidadeController in '..\controle\UUnidadeController.pas',
  UDAO in '..\dao\UDAO.pas',
  ConexaoBD in '..\Conexao\ConexaoBD.pas',
  UCidadeVO in '..\VO\UCidadeVO.pas',
  UCnaeVO in '..\VO\UCnaeVO.pas',
  UCondominioVO in '..\VO\UCondominioVO.pas',
  UEstadoVO in '..\VO\UEstadoVO.pas',
  UGenericVO in '..\VO\UGenericVO.pas',
  UNaturezaJuridicaVO in '..\VO\UNaturezaJuridicaVO.pas',
  UPaisVO in '..\VO\UPaisVO.pas',
  UPessoasVO in '..\VO\UPessoasVO.pas',
  UProprietarioUnidadeVO in '..\VO\UProprietarioUnidadeVO.pas',
  UTotalGastoMesVO in '..\VO\UTotalGastoMesVO.pas',
  UUnidadeVO in '..\VO\UUnidadeVO.pas',
  UPrecoGasController in '..\controle\UPrecoGasController.pas',
  UPrecoGasVO in '..\VO\UPrecoGasVO.pas',
  UInquilinoUnidadeVO in '..\VO\UInquilinoUnidadeVO.pas',
  UInquilinoUnidadeController in '..\controle\UInquilinoUnidadeController.pas',
  UTemplateFcxVO in '..\VO\UTemplateFcxVO.pas',
  UPlanoContasVO in '..\VO\UPlanoContasVO.pas',
  UTemplateDreVO in '..\VO\UTemplateDreVO.pas',
  UPlanoContasController in '..\controle\UPlanoContasController.pas',
  UTemplateDreController in '..\controle\UTemplateDreController.pas',
  UTemplateFcxController in '..\controle\UTemplateFcxController.pas',
  UContasPagarVO in '..\VO\UContasPagarVO.pas',
  UContasReceberVO in '..\VO\UContasReceberVO.pas',
  UHistoricoVO in '..\VO\UHistoricoVO.pas',
  UContasPagarController in '..\controle\UContasPagarController.pas',
  UContasReceberController in '..\controle\UContasReceberController.pas',
  UHistoricoController in '..\controle\UHistoricoController.pas',
  TestUCondominioController in 'TestController\TestUCondominioController.pas',
  TestUContasPagarController in 'TestController\TestUContasPagarController.pas',
  TestUContasReceberController in 'TestController\TestUContasReceberController.pas',
  TestUHistoricoController in 'TestController\TestUHistoricoController.pas',
  TestUInquilinoUnidadeController in 'TestController\TestUInquilinoUnidadeController.pas',
  TestUPessoasController in 'TestController\TestUPessoasController.pas',
  TestUPlanoContasController in 'TestController\TestUPlanoContasController.pas',
  TestUPrecoGasController in 'TestController\TestUPrecoGasController.pas',
  TestUProprietarioUnidadeController in 'TestController\TestUProprietarioUnidadeController.pas',
  TestUTemplateDreController in 'TestController\TestUTemplateDreController.pas',
  TestUTemplateFcxController in 'TestController\TestUTemplateFcxController.pas',
  TestUUnidadeController in 'TestController\TestUUnidadeController.pas',
  TestUCondominioVO in 'TestVO\TestUCondominioVO.pas',
  TestUContasPagarVO in 'TestVO\TestUContasPagarVO.pas',
  TestUContasReceberVO in 'TestVO\TestUContasReceberVO.pas',
  TestUHistoricoVO in 'TestVO\TestUHistoricoVO.pas',
  TestUPlanoContasVO in 'TestVO\TestUPlanoContasVO.pas',
  TestUTemplateDreVO in 'TestVO\TestUTemplateDreVO.pas',
  TestUTemplateFcxVO in 'TestVO\TestUTemplateFcxVO.pas',
  UContadorVO in '..\VO\UContadorVO.pas',
  ULancamentoContabilVO in '..\VO\ULancamentoContabilVO.pas',
  ULancamentoPadraoVO in '..\VO\ULancamentoPadraoVO.pas',
  ULoteVO in '..\VO\ULoteVO.pas',
  UResponsavelVO in '..\VO\UResponsavelVO.pas',
  UUsuarioVO in '..\VO\UUsuarioVO.pas',
  UContadorController in '..\controle\UContadorController.pas',
  ULancamentoContabilController in '..\controle\ULancamentoContabilController.pas',
  ULancamentoPadraoController in '..\controle\ULancamentoPadraoController.pas',
  ULoteController in '..\controle\ULoteController.pas',
  UResponsavelController in '..\controle\UResponsavelController.pas',
  UUsuarioController in '..\controle\UUsuarioController.pas',
  TestUContadorController in 'TestController\TestUContadorController.pas',
  UItensLeituraGasVO in '..\VO\UItensLeituraGasVO.pas',
  UItensRateioVO in '..\VO\UItensRateioVO.pas',
  ULeituraGasVO in '..\VO\ULeituraGasVO.pas',
  URateioVO in '..\VO\URateioVO.pas',
  UItensLeituraGasController in '..\controle\UItensLeituraGasController.pas',
  UItensRateioController in '..\controle\UItensRateioController.pas',
  ULeituraGasController in '..\controle\ULeituraGasController.pas',
  URateioController in '..\controle\URateioController.pas',
  UEmpresaTrab in '..\tela\UEmpresaTrab.pas' {FormEmpresaTrab},
  UtelaCadastro in '..\tela\UtelaCadastro.pas' {FTelaCadastro},
  UTela in '..\tela\UTela.pas' {FTela},
  UBase in '..\tela\UBase.pas' {FBase},
  UCondominio in '..\tela\UCondominio.pas' {FTelaCadastroCondominio},
  UCidade in '..\tela\UCidade.pas' {TFTelaCadastroCidade},
  UCnae in '..\tela\UCnae.pas' {FTelaCadastroCnae},
  UContador in '..\tela\UContador.pas' {FTelaCadastroContador},
  UNaturezaJuridica in '..\tela\UNaturezaJuridica.pas' {FTelaCadastroNaturezaJuridica},
  UPais in '..\tela\UPais.pas' {FTelaCadastroPais},
  UPrecoGas in '..\tela\UPrecoGas.pas' {FTelaCadastroPrecoGas},
  UResponsavel in '..\tela\UResponsavel.pas' {FTelaCadastroResponsavel},
  UEstado in '..\tela\UEstado.pas' {FTelaCadastroEstado},
  Upessoa in '..\tela\Upessoa.pas' {FTelaCadastroPessoa},
  UPlanoContas in '..\tela\UPlanoContas.pas' {FTelaCadastroPlano},
  Atributos in '..\comum\Atributos.pas',
  Biblioteca in '..\comum\Biblioteca.pas',
  Constantes in '..\comum\Constantes.pas',
  uMVC in '..\uMVC.pas' {FormMenu},
  ULogin in '..\tela\ULogin.pas' {FormLogin},
  PNGExtra in '..\..\..\..\..\..\..\Downloads\PNGExtra.pas',
  UUnidade in '..\tela\UUnidade.pas' {FTelaCadastroUnidade},
  UInquilinoUnidade in '..\tela\UInquilinoUnidade.pas' {FTelaCadastroInquilino},
  ULancamentoPadrao in '..\tela\ULancamentoPadrao.pas' {FTelaCadastroLancamentoPadrao},
  UProprietarioUnidade in '..\tela\UProprietarioUnidade.pas' {FTelaCadastroProprietario},
  UTotalGastoMes in '..\tela\UTotalGastoMes.pas' {FTelaCadastroTotalGastoMes},
  UTemplateDre in '..\tela\UTemplateDre.pas' {FTelaCadastroTemplateDre},
  UTemplateFcx in '..\tela\UTemplateFcx.pas' {FTelaCadastroTemplateFcx},
  UContasPagar in '..\tela\UContasPagar.pas' {FTelaCadastroContasPagar},
  UContasReceber in '..\tela\UContasReceber.pas' {FTelaCadastroContasReceber},
  UHistorico in '..\tela\UHistorico.pas' {FTelaCadastroHistorico},
  ULote in '..\tela\ULote.pas' {FTelaCadastroLote},
  UUsuario in '..\tela\UUsuario.pas' {FTelaCadastroUsuario},
  ULeituraGas in '..\tela\ULeituraGas.pas' {FTelaCadastroLeituraGas},
  URateio in '..\tela\URateio.pas' {FTelaCadastroRateio},
  TestUContadorVO in 'TestVO\TestUContadorVO.pas',
  TestUUsuarioVO in 'TestVO\TestUUsuarioVO.pas',
  TestUUsuarioController in 'TestController\TestUUsuarioController.pas',
  TestULoteController in 'TestController\TestULoteController.pas',
  TestULoteVO in 'TestVO\TestULoteVO.pas',
  TestULancamentoContabilController in 'TestController\TestULancamentoContabilController.pas',
  TestULancamentoContabilVO in 'TestVO\TestULancamentoContabilVO.pas',
  TestULancamentoPadraoController in 'TestController\TestULancamentoPadraoController.pas',
  TestULancamentoPadraoVO in 'TestVO\TestULancamentoPadraoVO.pas',
  TestULeituraGasVO in 'TestVO\TestULeituraGasVO.pas',
  TestULeituraGasController in 'TestController\TestULeituraGasController.pas',
  TestUItensLeituraGasVO in 'TestVO\TestUItensLeituraGasVO.pas',
  TestUItensLeituraGasController in 'TestController\TestUItensLeituraGasController.pas',
  TestURateioVO in 'TestVO\TestURateioVO.pas',
  TestURateioController in 'TestController\TestURateioController.pas',
  TestUItensRateioVO in 'TestVO\TestUItensRateioVO.pas',
  TestUItensRateioController in 'TestController\TestUItensRateioController.pas',
  TestUPrecoGasVO in 'TestVO\TestUPrecoGasVO.pas';

{R *.RES}

begin
  TDBExpress.Conectar('Firebird');
  DUnitTestRunner.RunRegisteredTests;
end.

