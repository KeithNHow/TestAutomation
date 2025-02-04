//Codeunit (ID 51400).
//Subtype: Specifies the type of codeunit (Normal,Test,TestRunner,Upgrade,Install).
//[Test]: Specifies the method is a Test method.

namespace KNHTestAutomation;

codeunit 51400 "KNH Test 1"
{
    Subtype = Test;

    [Test]
    procedure MyWorkingFunction() //Func passes
    begin
        Message('My First Test Result');
    end;

    [Test]
    procedure MyNotWorkingFunction()  //Func fails
    begin
        Error('My Second Test Result');
    end;

    [Test]
    procedure MyNewWorkingFunction() //Func passes
    begin
        Message('My Third Test Result');
    end;
}