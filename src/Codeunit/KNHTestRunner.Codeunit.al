/// <summary>
/// Codeunit 51404 "KNH_TestRunner".
/// TestRunner codeunit manages the execution of one or more test codeunits.
/// </summary>
codeunit 51404 "KNH_TestRunner"
{
    Subtype = TestRunner; //options - normal, test, testrunner, upgrade, install
    TestIsolation = Codeunit; //options - disabled, codeunit, function

    trigger OnRun()
    begin
        Codeunit.RUN(Codeunit::"KNH_FirstTest");
        Codeunit.RUN(Codeunit::"KNH_SecondTest");
        Codeunit.RUN(Codeunit::"KNH_ThirdTest");
        Codeunit.RUN(Codeunit::"KNH_FourthTest");
    end;
}