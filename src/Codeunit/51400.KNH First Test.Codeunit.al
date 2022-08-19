/// <summary>
/// Codeunit 51400.
/// </summary>
codeunit 51400 "KNH First Test"
{
    Subtype = Test;
    [Test]

    procedure MyWorkingFunction()
    begin
        Message('My First Test Result');
    end;

    [Test]
    procedure MyNotWorkingFunction()
    begin
        Error('My Second Test Result');
    end;

    [Test]
    procedure MyNewWorkingFunction()
    begin
        Message('My Third Test Result');
    end;
}