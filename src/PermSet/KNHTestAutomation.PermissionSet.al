//Permissionset TestAutomation (ID 51400).
namespace KNHTestAutomation;

permissionset 51400 "KNH_TestAutomation"
{
    Assignable = true;
    Caption = 'Test Automation', MaxLength = 30;
    Permissions =
        page "KNH Tests Executor" = X,
        codeunit "KNH AssertEquals" = X,
        codeunit "KNH AssertError" = X,
        codeunit "KNH Confirm Handler" = X,
        codeunit "KNH Message Handler" = X,
        codeunit "KNH Test Method" = X,
        codeunit "KNH Test Run" = X,
        codeunit "KNH TryFunction" = X;
}