//Codeunit (ID 51400).
//Subtype: Specifies the type of codeunit (Normal,Test,TestRunner,Upgrade,Install).
//[Test]: Specifies the method is a Test method.

namespace KNHTestAutomation;

codeunit 51400 "KNH Test Method"
{
    Subtype = Test;

    [Test]
    procedure MyWorkingFunction() //Test passes and returns a message
    begin
        Message('My First Test Result');
    end;

    [Test]
    procedure MyNotWorkingFunction() //Test fails and no message is returned
    begin
        Error('My Second Test Result');
    end;
}