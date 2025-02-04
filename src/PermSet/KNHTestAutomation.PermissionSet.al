//Permissionset TestAutomation (ID 51400).

namespace KNHTestAutomation;

permissionset 51400 "KNH_TestAutomation"
{
    Assignable = true;
    Caption = 'Test Automation', MaxLength = 30;
    Permissions =
        codeunit "KNH Test 1" = X,
        codeunit "KNH Test 2" = X,
        codeunit "KNH Test 3" = X,
        codeunit "KNH Test 4" = X,
        codeunit "KNH Test 5" = X,
        page "KNH Tests Executor" = X;
}
