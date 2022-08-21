/// <summary>
/// Unknown KNH TestAutomation (ID 51400).
/// </summary>
permissionset 51400 "KNH TestAutomation"
{
    Assignable = true;
    Caption = 'Test Automation', MaxLength = 30;
    Permissions =
        codeunit "KNH First Test" = X,
        codeunit "KNH Second Test" = X,
        codeunit "KNH Third Test" = X,
        codeunit "KNH Fourth Test" = X,
        codeunit "KNH TestRunner" = X,
        page "KNH Tests Executor" = X;
}
