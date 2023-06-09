/// <summary>
/// Codeunit KNH Try Function Test (ID 51406).
/// </summary>
codeunit 51406 "KNH_TryFunctionTest"
{
    trigger OnRun()
    begin
        Result := true;
        if not TestFuncSuccess(Result) then
            Message('Test Function Failed.') //This message is displayed
        else
            Message('Test Function Successful.');
    end;

    var
        Result: Boolean;

    [TryFunction]
    local procedure TestFuncSuccess(var pResult: Boolean);
    begin
        pResult := false;
        Error('Not what I wanted.'); //This error is ignored
    end;
}
