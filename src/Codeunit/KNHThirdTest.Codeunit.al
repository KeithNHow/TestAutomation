/// <summary>
/// Codeunit 51402.
/// </summary>
codeunit 51402 "KNH_ThirdTest"
{
    Subtype = Test; //Pillar 1
    [Test] //Pillar 1

    [HandlerFunctions('MyMessageHandler')] //Pillar 3
    procedure MyHandlerFunction()
    begin
        Message('My Handler Function - Part 2');
    end;

    [MessageHandler] //Pillar 3
    procedure MyMessageHandler(Message: Text[1024])
    begin
        Message('My Handler Function - Part 1');
    end;
}