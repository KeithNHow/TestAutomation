/// <summary>
/// Codeunit KNH My Normal Test (ID 51405).
/// </summary>
codeunit 51405 "KNH_XNormalTest"
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
    var
    begin
        if Confirm('Did I do good?', true) then
            Message('You did good!')
        else
            Message('You need to improve');
        if StrMenu('A, B, C', 1, 'Select one of the Options') = 2 then
            Message('You selected Option 2.')
        else
            Message('Option 2 not selected.');
    end;
}
