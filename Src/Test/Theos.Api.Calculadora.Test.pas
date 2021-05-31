unit Theos.Api.Calculadora.Test;
{

  Delphi DUnit Test Case
  ----------------------
  This unit contains a skeleton test case class generated by the Test Case Wizard.
  Modify the generated code to correctly setup and call the methods from the unit 
  being tested.

}

interface

uses
  TestFramework, Theos.Api.Calculadora, Vcl.Dialogs, Winapi.Windows, System.SysUtils,
  Vcl.Graphics, System.Variants, Theos.Lib.Nullable, Winapi.Messages, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Forms, System.Classes;

type
  TCalculadoraTest = class(TTestCase)
  strict private
    const
      BASE_CALCULO_PARA_IMPOSTO: Double = 10000;
      VALOR_ESPERADO_PARA_IMPOSTO_A: Double = 1500;
      VALOR_ESPERADO_PARA_IMPOSTO_B: Double = 1485;
      VALOR_ESPERADO_PARA_IMPOSTO_C: Double = 2985;

    var
      FCalculadora: TCalculadora;

  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestImpostoA;
    procedure TestImpostoB;
    procedure TestImpostoC;
  end;

implementation

procedure TCalculadoraTest.SetUp;
begin
  FCalculadora := TCalculadora.Create;
end;

procedure TCalculadoraTest.TearDown;
begin
  FreeAndNil(FCalculadora);
end;

procedure TCalculadoraTest.TestImpostoA;
var
  Returno: Double;
begin
  FCalculadora.BaseCalculo := BASE_CALCULO_PARA_IMPOSTO;
  try
    Returno := FCalculadora.ImpostoA;
  except
    on E: Exception do
    begin
      Check(True, 'Erro ao Calcular Imposto A: ' + e.Message);
      Exit;
    end;
  end;
  CheckEquals(VALOR_ESPERADO_PARA_IMPOSTO_A, Returno);
end;

procedure TCalculadoraTest.TestImpostoB;
var
  Returno: Double;
begin
  FCalculadora.BaseCalculo := BASE_CALCULO_PARA_IMPOSTO;
  try
    Returno := FCalculadora.ImpostoB;
  except
    on E: Exception do
    begin
      Check(True, 'Erro ao Calcular Imposto B: ' + e.Message);
      Exit;
    end;
  end;
  CheckEquals(VALOR_ESPERADO_PARA_IMPOSTO_B, Returno);
end;

procedure TCalculadoraTest.TestImpostoC;
var
  Returno: Double;
begin
  FCalculadora.BaseCalculo := BASE_CALCULO_PARA_IMPOSTO;
  try
    Returno := FCalculadora.ImpostoC;
  except
    on E: Exception do
    begin
      Check(True, 'Erro ao Calcular Imposto C: ' + e.Message);
      Exit;
    end;
  end;
  CheckEquals(VALOR_ESPERADO_PARA_IMPOSTO_C, Returno);
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TCalculadoraTest.Suite);
end.

