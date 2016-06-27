unit UPessoasVO;

interface

uses Atributos, Classes, Constantes, Generics.Collections, SysUtils, UGenericVO,UCnaeVO, UCidadeVO, UEstadoVO, UPaisVO;

type
  [TEntity]
  [TTable('Pessoa')]
  TPessoasVO = class(TGenericVO)
  private
    FidPessoa: Integer;
    FcpfCnpj: String;
    Fnome: String;
    Fcep: String;
    FEndereco: String;
    Fnumero: String;
    Fcomplemento: String;
    Fbairro: String;
    Femail: String;
    FtelefoneI: String;
    FtelefoneII: String;
    FidCnae: integer;
    FIdCidade : integer;
    FidEstado : integer;
    FidPais : integer;

  public
    CnaeVO: TCNAEVO;
    CidadeVO : TCidadeVO;
    EstadoVO : TEstadoVO;
    PaisVO   : TPaisVO;

    [TId('idpessoa')]
    [TGeneratedValue(sAuto)]
    property idPessoa: Integer  read FidPessoa write FidPessoa;
    [TColumn('cpfCnpj','Cpf / Cnpj',130,[ldGrid,ldLookup,ldComboBox], False)]
    property Cnpjcpf: String  read FcpfCnpj write FcpfCnpj;
    [TColumn('nome','Nome',250,[ldGrid,ldLookup,ldComboBox], False)]
    property nome : String  read Fnome write Fnome;
    [TColumn('cep','CEP',80,[ldLookup,ldComboBox], False)]
    property Cep: String  read FCep write FCep;
    [TColumn('endereco','Rua',250,[ldLookup,ldComboBox], False)]
    property Endereco: String  read FEndereco write FEndereco;
    [TColumn('numero','numero',50,[ldLookup,ldComboBox], False)]
    property Numero: String  read FNumero write FNumero;
    [TColumn('complemento','complemento',250,[ldLookup,ldComboBox], False)]
    property Complemento: String  read FComplemento write FComplemento;
    [TColumn('bairro','bairro',250,[ldLookup,ldComboBox], False)]
    property Bairro: String  read FBairro write FBairro;
    [TColumn('email','Email',200,[ldGrid,ldLookup,ldComboBox], False)]
    property Email: String  read FEmail write FEmail;
    [TColumn('telefoneI','Tel I',100,[ldGrid,ldLookup,ldComboBox], False)]
    [TFormatter(ftTelefone, taLeftJustify)]
    property TelefoneI: String  read FtelefoneI write FtelefoneI;
    [TColumn('telefoneII','Tel II',15,[ldLookup,ldComboBox], False)]
    [TFormatter(ftTelefone, taLeftJustify)]
    property TelefoneII: String  read FTelefoneII write FtelefoneII;
    [TColumn('idCnae','idCnae',0,[ldLookup,ldComboBox], False)]
    property idCnae: integer  read FIdCnae write FIdCnae;
    [TColumn('idCidade','idCidade',0,[ldLookup,ldComboBox], False)]
    property idCidade: integer  read FIdCidade write FIdCidade;

    [TColumn('idEstado','idEstado',0,[ldLookup,ldComboBox], False)]
    property idEstado: integer  read FidEstado write FidEstado;

    [TColumn('idPais','idPais',0,[ldLookup,ldComboBox], False)]
    property idPais: integer  read FidPais write FidPais;



   procedure ValidarCampos;
   Function ValidaCPF(xCPF: String): Boolean;
   Function ValidaCNPJ(xCNPJ: String): Boolean;
   Function MascaraCnpjCpf(Str: String): String;

  end;

implementation
{ TPessoasVO }

procedure TPessoasVO.ValidarCampos;
begin
  if (Self.FcpfCnpj = '') then
    raise Exception.Create('O campo Cnpj / Cpf � obrigat�rio!');
  if (Self.Fnome = '') then
    raise Exception.Create('O campo Nome � obrigat�rio!');

  if ((length(self.FcpfCnpj)) <= 11) then
  begin
    if(Self.ValidaCPF(self.FcpfCnpj)=false)then
    begin
      raise Exception.Create('CPF Inv�lido');
    end;
  end
  else if (length(self.FcpfCnpj) >= 14) then
  begin
    if(Self.ValidaCnpj(self.FcpfCnpj)=false)then
    begin
      raise Exception.Create('CNPJ Inv�lido');
    end;
  end;

end;
function TPessoasVO.MascaraCnpjCpf(Str: String): String;
begin
  if Length(Str)=11 then
    Result:='999.999.999-99;0; '
  else
    if Length(Str)=14 then
       Result:='99.999.999/9999-99;0; '
     else Result:='99999999999999;0; ';
end;
function TPessoasVO.ValidaCNPJ(xCNPJ: String): Boolean;
Var
  d1, d4, xx, nCount, fator, resto, digito1, digito2: integer;
  Check: String;
begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length(xCNPJ) - 2 do
  begin
    if Pos(Copy(xCNPJ, nCount, 1), '/-.') = 0 then
    begin
      if xx < 5 then
      begin
        fator := 6 - xx;
      end
      else
      begin
        fator := 14 - xx;
      end;
      d1 := d1 + StrToInt(Copy(xCNPJ, nCount, 1)) * fator;
      if xx < 6 then
      begin
        fator := 7 - xx;
      end
      else
      begin
        fator := 15 - xx;
      end;
      d4 := d4 + StrToInt(Copy(xCNPJ, nCount, 1)) * fator;
      xx := xx + 1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(digito1) + IntToStr(digito2);
  if Check <> Copy(xCNPJ, succ(Length(xCNPJ) - 2), 2) then
  begin
    //raise Exception.Create('Cnpj inv�lido!');
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;
function TPessoasVO.ValidaCPF(xCPF: String): Boolean;
Var
  d1, d4, xx, nCount, resto, digito1, digito2: integer;
  Check: String;
Begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to Length(xCPF) - 2 do
  begin
    if Pos(Copy(xCPF, nCount, 1), '/-.') = 0 then
    begin
      d1 := d1 + (11 - xx) * StrToInt(Copy(xCPF, nCount, 1));
      d4 := d4 + (12 - xx) * StrToInt(Copy(xCPF, nCount, 1));
      xx := xx + 1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := IntToStr(digito1) + IntToStr(digito2);
  if Check <> Copy(xCPF, succ(Length(xCPF) - 2), 2) then
  begin
    //raise Exception.Create('O Cpf inv�lido!');
    Result := False;
  end
  else
  begin
    Result := True;
  end;
end;


begin

end.
