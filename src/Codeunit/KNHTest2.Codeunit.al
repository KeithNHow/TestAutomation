//Codeunit (ID 51401).
//Subtype - Specifies the type of codeunit - Normal,Test,TestRunner,Upgrade,Install
//[Test] - Specifies the method is a Test method.
//asserterror - Specifies that error should be displayed.

namespace KNHTestAutomation;

codeunit 51401 "KNH Test 2"
{
    Subtype = Test;

    [Test]
    procedure MyFirstPostiveNegativeTestFunction() //Func passes
    begin
        asserterror
        Error('');
    end;

    [Test]
    procedure MySecondPostiveNegativeTestFunction() //Func passes
    var
        A: Integer;
    begin
        A := 1;
        asserterror
        if A = 2 then
            Message('Condition is true.')
        else
            Error('Condition is false.');
    end;
}