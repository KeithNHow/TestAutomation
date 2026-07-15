//Codeunit KNH Try Function Test (ID 51406).
namespace KNHTestAutomation;

codeunit 51406 "KNH TryFunction"
{
    trigger OnRun()
    var
        Test: text;
    begin
        if this.TryFunction(Test) then
            Message('TryFunction = %1', Test)
        else
            Message('TryFunction = %1', Test);
    end;

    [TryFunction]
    local procedure TryFunction(var Test: Text)
    begin
        Test := 'Failed';
        if Test = 'Failed' then
            error('Test failed')
        else
            Test := 'Success';
    end;
}
