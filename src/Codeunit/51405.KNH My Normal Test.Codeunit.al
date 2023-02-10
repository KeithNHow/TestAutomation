/// <summary>
/// Codeunit KNH My Normal Test (ID 51405).
/// </summary>
codeunit 51405 "KNH My Normal Test"
{
    trigger OnRun()
    begin
        MyWorkingFunction();
        MyConfirmMessage();
    end;

    local procedure MyWorkingFunction()
    begin
        Message('My First Normal Test.');
    end;

    local procedure MyConfirmMessage()
    begin
        if Dialog.Confirm('Did I do good?', false, true, false) then
            Message('You did good!');
    end;
}
