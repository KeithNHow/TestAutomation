namespace KNHTestAutomation;
using Microsoft.Sales.Customer;
using System.TestLibraries.Utilities;
codeunit 51411 "KNH New Customer Test"
{
    Subtype = Test;

    [Test]
    procedure VerifyCustomerCreation()
    var
        Customer: Record Customer;
        LibraryAssert: Codeunit "Library Assert"; //130002
        CustomerNo: Code[20];
    begin
        // [Given] A new customer
        Customer.Init();
        Customer.Name := 'Test Customer';
        Customer.Insert(true);
        CustomerNo := Customer."No.";

        // [When] We read the customer record
        Customer.Get(CustomerNo);

        // [Then] Verify the customer name is correct
        LibraryAssert.AreEqual('Test Customer', Customer.Name, 'Customer name does not match');
    end;
}