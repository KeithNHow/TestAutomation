namespace KNHTestAutomation;
codeunit 51408 "KNH Test 5"
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
        if Reply then
            Message('Reply is true')
        else
            Message('Reply is false'); //does not show because reply is true
    end;

    [ConfirmHandler]
    procedure MyConfirmHandler(Question: Text; var Reply: Boolean) //Func passes
    begin
        Reply := true;
    end;

    //Note: ConfirmHandler method must be global. 
}