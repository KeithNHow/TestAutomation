//Codeunit (ID 51403).
//Subtype - Sets codeunit as a test codeunit.
//TestPage - Sets page to be run without update to database.
//AssertEquals - Asserts that the value in a field on a test page equals a specified value.

namespace KNHTestAutomation;
using Microsoft.Foundation.PaymentTerms;

codeunit 51403 "KNH Test 4"
{
    Subtype = Test;

    [Test]
    procedure MyFirstTestPageTestFunction()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Last();
        PaymentTerms.Code.AssertEquals('COD'); //Checks whether last rec contains code value of 'COD'.
        PaymentTerms.Close();
    end;

    [Test]
    procedure MySecondTestPageTestFunction()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        PaymentTerms.OpenView();
        PaymentTerms.Last();
        PaymentTerms.Code.AssertEquals('LUC'); //Checks whether last rec contains code value of 'LUC'.
        PaymentTerms.Close();
    end;

    /*
        [Test]
        procedure MyThirdTestPageTestFunction()
        var
            PaymentTerms: TestPage "Payment Terms";
        begin
            PaymentTerms.OpenNew();
            PaymentTerms.Code.SetValue('LUC'); //Changes code value to 'COD'.
            PaymentTerms."Discount %".SetValue('56');
            PaymentTerms.Description.SetValue(PaymentTerms.Code.Value());
            PaymentTerms.Close();
            //Error('Code: %1 \ Discount %: %2 \ Description: %3', PaymentTerms.Code.Value(), PaymentTerms."Discount %".Value(), PaymentTerms.Description.Value());
        end;
    */
}