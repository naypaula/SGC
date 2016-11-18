unit ULeituraGasVO;


interface

uses Atributos, Classes, Constantes, Generics.Collections, SysUtils, UGenericVO,
   UCondominioVO,UitensLeituraGasVO;

type
  [TEntity]
  [TTable('LeituraGas')]
  TLeituraGasVO = class(TGenericVO)
  private
    FidLeituraGas : Integer;
    FdtLeitura : TDateTime;
    FidCondominio : Integer;

  public
    CondominioVO : TCondominioVO;

    ItensLeitura: TObjectList<TitensLeituraGasVO>;

    [TId('idLeituraGas')]
    [TGeneratedValue(sAuto)]
    property idLeituraGas : Integer  read FidLeituraGas write FidLeituraGas;

    [TColumn('dtLeitura','Data',0,[ldGrid,ldLookup,ldComboBox], False)]
    property dtLeitura: TDateTime  read FdtLeitura write FdtLeitura;

    [TColumn('idCondominio','Condominio',0,[ldLookup,ldComboBox], False)]
    property idCondominio: integer  read FidCondominio write FidCondominio;

    procedure ValidarCamposObrigatorios;

  end;
implementation


procedure TLeituraGasVO.ValidarCamposObrigatorios;
begin
  if (self.dtLeitura = 0) then
  begin
    raise Exception.Create('O campo Data � obrigat�rio!');
  end;
end;
end.

