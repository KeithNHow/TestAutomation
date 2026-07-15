//Codeunit "KNH TestRunner" (ID 51404).
//SubType TestRunner - Allows for the running of multiple tests in a single run.
//TestIsolation = Allows for rollback of test data after each test.

namespace KNHTestAutomation;

codeunit 51404 "KNH Test Run"
{
    Subtype = TestRunner; //Options (normal, test, testrunner, upgrade, install)
    TestIsolation = Codeunit; //Options (disabled, codeunit, function)

    trigger OnRun()
    begin
        Codeunit.Run(Codeunit::"KNH Test Method");
        Codeunit.Run(Codeunit::"KNH AssertError");
        Codeunit.Run(Codeunit::"KNH Message Handler");
        Codeunit.Run(Codeunit::"KNH AssertEquals");
        Codeunit.Run(Codeunit::"KNH Confirm Handler");
        Codeunit.Run(Codeunit::"KNH TryFunction");
        Codeunit.Run(Codeunit::"KNH New Customer Test");
    end;
}