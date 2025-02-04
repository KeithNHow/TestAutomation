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
                RunObject = codeunit "KNH Test 1";
            }
            action(MySecondTestCodeunit)
            {
                Caption = 'My Second Test Codeunit';
                ToolTip = 'Executes My Second Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test 2";
            }
            action(MyThirdTestCodeunit)
            {
                Caption = 'My Third Test Codeunit';
                ToolTip = 'Executes My Third Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test 3";
            }
            action(MyFourthTestCodeunit)
            {
                Caption = 'My Fourth Test Codeunit';
                ToolTip = 'Executes My Fourth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test 4";
            }
            action(MySixthTestCodeunit)
            {
                Caption = 'My Fifth Test Codeunit';
                ToolTip = 'Executes My Fifth Test Codeunit';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test 5";
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