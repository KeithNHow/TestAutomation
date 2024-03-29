/// <summary>
/// Codeunit 51403.
/// </summary>
codeunit 51403 "KNH_FourthTest"
{
    Subtype = Test; //Pillar 1
    [Test] //Pillar 1
    procedure MyFirstTestPageTestFunction()
    var
        PaymentTerms: TestPage "Payment Terms"; //Pillar 5
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Last();
        PaymentTerms.Code.AssertEquals('LUC'); //Pillar 2 - Pretend Last rec in pymt terms table is 'Luc'
        PaymentTerms.Close();
    end;

    [Test] //Pillar 1
    procedure MySecondTestPageTestFunction()
    var
        PaymentTerms: TestPage "Payment Terms"; //Pillar 5
    begin
        PaymentTerms.OpenNew();
        PaymentTerms.Code.SetValue('LUC');
        PaymentTerms."Discount %".SetValue('56');
        PaymentTerms.Description.SetValue(PaymentTerms.Code.Value());
        Error('Code: %1 \ Discount %: %2 \ Description: %3', PaymentTerms.Code.Value(), PaymentTerms."Discount %".Value(), PaymentTerms.Description.Value());
    end;
}