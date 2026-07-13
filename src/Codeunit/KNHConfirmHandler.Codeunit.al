namespace KNHTestAutomation;
codeunit 51408 "KNH Confirm Handler"
{
    Subtype = Test;

    [Test]
    procedure MyTest()
    var
        Question: Text;
        Reply: Boolean;
    begin
        Question := 'Do you want to continue?';
        Reply := false;
        this.MyConfirmHandler(Question, Reply);
    end;

    [ConfirmHandler] //ConfirmHandler method must be global. 
    procedure MyConfirmHandler(Question: Text; var Reply: Boolean) //Func passes
    begin
        Reply := true;
    end;


}