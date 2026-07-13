//Page Tests Executor (ID 51400).

namespace KNHTestAutomation;

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
                RunObject = codeunit "KNH Test Method";
            }
            action(MySecondTestCodeunit)
            {
                Caption = 'My Second Test Codeunit';
                ToolTip = 'Executes My Second Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH AssertError";
            }
            action(MyThirdTestCodeunit)
            {
                Caption = 'My Third Test Codeunit';
                ToolTip = 'Executes My Third Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH AssertEquals";
            }
            action(MyFourthTestCodeunit)
            {
                Caption = 'My Fourth Test Codeunit';
                ToolTip = 'Executes My Fourth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH TryFunction";
            }
            action(MyFifthTestCodeunit)
            {
                Caption = 'My Fifth Test Codeunit';
                ToolTip = 'Executes My Fifth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Message Handler";
            }
            action(MySixthTestCodeunit)
            {
                Caption = 'My Sixth Test Codeunit';
                ToolTip = 'Executes My Sixth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Message Handler";
            }
            action(MyTestCodeunits)
            {
                Caption = 'My Test Runner Codeunit';
                ToolTip = 'Executes My Test Runner Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test Run";
            }
        }
    }
}