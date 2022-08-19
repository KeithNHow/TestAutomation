/// <summary>
/// Codeunit 51404 "KNH TestRunner".
/// </summary>
codeunit 51404 "KNH TestRunner"
{
    Subtype = TestRunner;
    TestIsolation = Codeunit;

    trigger OnRun()
    begin
        Codeunit.RUN(Codeunit::"KNH First Test");
        Codeunit.RUN(Codeunit::"KNH Second Test");
        Codeunit.RUN(Codeunit::"KNH Third Test");
        Codeunit.RUN(Codeunit::"KNH Fourth Test");
    end;
}