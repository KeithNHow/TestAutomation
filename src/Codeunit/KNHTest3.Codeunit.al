//Codeunit (ID 51402).
//[Handler Function] - Method offers a way to handle test methods.
//[Message Handler] - Method offers a way to handle messages.

namespace KNHTestAutomation;

codeunit 51402 "KNH Test 3"
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('MyMessageHandler')]
    procedure MyTest()
    begin
        Message('Message will be displayed.');
    end;

    [MessageHandler]
    procedure MyMessageHandler(Message: Text[1024]) //Func passes
    begin
        Message('Message will not be displayed.');
    end;
}