//Codeunit KNH Try Function Test (ID 51406).
namespace KNHTestAutomation;

codeunit 51406 "KNH TryFunction"
{
    trigger OnRun()
    var
        Result: Boolean;
    begin
        Result := true;
        if this.TryFunction(Result) then
            Message('TryFunction returned true, Result: %1', Result)
        else
            Message('TryFunction returned false, Result: %1', Result);
    end;

    [TryFunction]
    local procedure TryFunction(var Result: Boolean)
    begin
        Result := false;
    end;
}
