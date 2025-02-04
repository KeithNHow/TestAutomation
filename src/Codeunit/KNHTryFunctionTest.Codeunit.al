//Codeunit KNH Try Function Test (ID 51406).
namespace KNHTestAutomation;

codeunit 51406 "KNH TryFunction Test"
{
    trigger OnRun()
    var
        Result: Boolean;
    begin
        Result := true;
        if not this.TestFuncSuccess(Result) then
            Message('Test Function Failed.') //This message is displayed
        else
            Message('Test Function Successful.');
    end;

    [TryFunction]
    local procedure TestFuncSuccess(var pResult: Boolean);
    begin
        pResult := false;
        Error('Not what I wanted.'); //This error is ignored
    end;
}
