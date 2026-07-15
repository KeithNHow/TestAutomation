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
                Caption = 'My Test Method';
                ToolTip = 'Executes My Test Method';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Test Method";
            }
            action(MySecondTestCodeunit)
            {
                Caption = 'My Assert Error Test';
                ToolTip = 'Executes My Assert Error Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH AssertError";
            }
            action(MyThirdTestCodeunit)
            {
                Caption = 'My Assert Equals Test';
                ToolTip = 'Executes My Assert Equals Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH AssertEquals";
            }
            action(MyFourthTestCodeunit)
            {
                Caption = 'My Try Function Test';
                ToolTip = 'Executes My Try Function Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH TryFunction";
            }
            action(MyFifthTestCodeunit)
            {
                Caption = 'My Message Handler Test';
                ToolTip = 'Executes My Message Handler Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH Message Handler";
            }
            action(MySixthTestCodeunit)
            {
                Caption = 'My Try Function Test';
                ToolTip = 'Executes My Try Function Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH TryFunction";
            }
            action(MyCustomerTest)
            {
                Caption = 'My New Customer Test';
                ToolTip = 'Executes My New Customer Test';
                ApplicationArea = All;
                Image = ExecuteBatch;
                RunObject = codeunit "KNH New Customer Test";
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