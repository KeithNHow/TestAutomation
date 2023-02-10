/// <summary>
/// Codeunit 51401.
/// </summary>
codeunit 51401 "KNH Second Test"
{
    Subtype = Test; //Pillar 1

    var
        A: Integer;

    [Test] //Pillar 1

    procedure MyFirstPostiveNegativeTestFunction()
    begin
        asserterror Error('This error was expected'); //Pillar 2
    end;

    [Test]

    procedure MySecondPostiveNegativeTestFunction()

    begin
        A := 1;
        asserterror
        if A = 1 then //Pillar 2
            Message('Why no error')
        else
            error('This message should appear');
    end;
}