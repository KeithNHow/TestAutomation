//Codeunit (ID 51401).
//Subtype - Specifies the type of codeunit - Normal,Test,TestRunner,Upgrade,Install
//[Test] - Specifies the method is a Test method.
//asserterror - Specifies that error should be displayed.

namespace KNHTestAutomation;

codeunit 51401 "KNH AssertError"
{
    Subtype = Test;

    [Test]
    procedure MyFirstPostiveNegativeTestFunction()
    begin
        asserterror
        error('Condition is false.');
    end;

    [Test]
    procedure MySecondPostiveNegativeTestFunction()
    var
        A: Integer;
    begin
        A := 2;
        asserterror
        if A = 2 then
            error('Condition is true.')

    end;
}