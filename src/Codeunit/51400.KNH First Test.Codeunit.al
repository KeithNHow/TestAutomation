/// <summary>
/// Codeunit 51400.
/// Subtype: Specifies the type of codeunit - Normal,Test,TestRunner,Upgrade,Install
/// Test: Specifies the method is a Test method
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