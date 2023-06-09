/// <summary>
/// Unknown KNH_KNH TestAutomation (ID 51400).
/// </summary>
permissionset 51400 "KNH_TestAutomation"
{
    Assignable = true;
    Caption = 'Test Automation', MaxLength = 30;
    Permissions =
        codeunit "KNH_FirstTest" = X,
        codeunit "KNH_SecondTest" = X,
        codeunit "KNH_ThirdTest" = X,
        codeunit "KNH_FourthTest" = X,
        codeunit "KNH_TestRunner" = X,
        page "KNH_TestsExecutor" = X;
}
