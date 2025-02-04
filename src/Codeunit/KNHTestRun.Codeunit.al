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
        Codeunit.Run(Codeunit::"KNH Test 1");
        Codeunit.Run(Codeunit::"KNH Test 2");
        Codeunit.Run(Codeunit::"KNH Test 3");
        Codeunit.Run(Codeunit::"KNH Test 4");
        Codeunit.Run(Codeunit::"KNH Test 5");
    end;
}