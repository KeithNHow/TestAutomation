//Codeunit (ID 51402).
//[Message Handler] - Method offers a way to handle messages.

namespace KNHTestAutomation;

codeunit 51402 "KNH Message Handler"
{
    Subtype = Test;

    [MessageHandler] //Specifies that the method is a MessageHandler method, which handles Message statements.
    procedure MyMessageHandler(Message: Text[1024])
    begin
        Message := 'This is a test message from MyMessageHandler';
    end;

}