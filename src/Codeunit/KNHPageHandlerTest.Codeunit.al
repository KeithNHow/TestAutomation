namespace TestAutomation;
using Microsoft.Foundation.PaymentTerms;

codeunit 51410 "KNH Page Handler Test"
{
    Subtype = Test;
    TestType = UnitTest;
    RequiredTestIsolation = Codeunit;

    [Test]
    procedure MyPageHandlerTest()
    var
        PaymentTerms: TestPage "Payment Terms";
    begin
        this.MyPageHandler(PaymentTerms);
    end;

    [PageHandler]
    procedure MyPageHandler(var PaymentTerms: TestPage "Payment Terms")
    begin
        // Simulate page interaction
        PaymentTerms.OpenView();
        this.MyMessageHandler('');
    end;

    [MessageHandler] //Specifies that the method is a MessageHandler method, which handles Message statements.
    procedure MyMessageHandler(Message: Text[1024])
    begin
        Message := 'Payment Terms page can be opened';
    end;
}