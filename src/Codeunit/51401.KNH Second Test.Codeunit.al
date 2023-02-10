/// <summary>
/// Codeunit 51401.
/// Subtype: Specifies the type of codeunit - Normal,Test,TestRunner,Upgrade,Install
/// Test: Specifies the method is a Test method
/// asserterror: Specifies that error should be displayed
/// </summary>
codeunit 51401 "KNH Second Test"
{
    Subtype = Test; //Pillar 1

    var
        A: Integer;

    [Test] //Pillar 1
    procedure MyFirstPostiveNegativeTestFunction()
    begin
        asserterror Error('Error appears due to asserterror statement.'); //Pillar 2 - show error
    end;

    [Test]
    procedure MySecondPostiveNegativeTestFunction()
    begin
        A := 1;
        asserterror
        if A = 1 then //Pillar 2
            Message('No error as condition is true.')
        else
            Error('Error appears as condition is false.'); //show error
    end;
}