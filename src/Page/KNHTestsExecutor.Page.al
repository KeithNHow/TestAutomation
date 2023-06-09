/// <summary>
/// Page MyTestsExecutor (ID 51400).
/// </summary>
page 51400 "KNH_TestsExecutor"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    Caption = 'Test Page';
    actions
    {
        area(Processing)
        {
            action(MyFirstTestCodeunit)
            {
                Caption = 'My First Test Codeunit';
                ToolTip = 'Executes My First Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_FirstTest";
            }
            action(MySecondTestCodeunit)
            {
                Caption = 'My Second Test Codeunit';
                ToolTip = 'Executes My Second Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_SecondTest";
            }
            action(MyThirdTestCodeunit)
            {
                Caption = 'My Third Test Codeunit';
                ToolTip = 'Executes My Third Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_ThirdTest";
            }
            action(MyFourthTestCodeunit)
            {
                Caption = 'My Fourth Test Codeunit';
                ToolTip = 'Executes My Fourth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_FourthTest";
            }
            action(MyTestCodeunits)
            {
                Caption = 'My Test Runner Codeunit';
                ToolTip = 'Executes My Test Runner Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_TestRunner";
            }
            action(MyNormalTest)
            {
                Caption = 'My Normal Test Codeunit';
                ToolTip = 'Executes a Normal Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH_XNormalTest";
            }
        }
    }
}