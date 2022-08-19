/// <summary>
/// Page MyTestsExecutor (ID 51400).
/// </summary>
page 51400 "KNH Tests Executor"
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
                RunObject = codeunit "KNH First Test";
            }
            action(MySecondTestCodeunit)
            {
                Caption = 'My Second Test Codeunit';
                ToolTip = 'Executes My Second Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Second Test";
            }
            action(MyThirdTestCodeunit)
            {
                Caption = 'My Third Test Codeunit';
                ToolTip = 'Executes My Third Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Third Test";
            }
            action(MyFourthTestCodeunit)
            {
                Caption = 'My Fourth Test Codeunit';
                ToolTip = 'Executes My Fourth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Fourth Test";
            }
            action(MyTestCodeunits)
            {
                Caption = 'My Test Runner Codeunit';
                ToolTip = 'Executes My Test Runner Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH TestRunner";
            }
        }
    }
}