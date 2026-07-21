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

        // [When] We open the Customer Card page
        // Business Central will pause when the page is called and trigger the handler function
        Page.Run(Page::"Customer Card", Customer);

        // [Then] Verify the customer name is correct
        LibraryAssert.AreEqual('Test Customer', Customer.Name, 'Customer name does not match');
    end;

    [PageHandler]
    procedure VerifyCustomerPageHandler(var CustomerPage: TestPage "Customer Card")
    begin
        // [Then] Verify the data passed to the page is correct
        CustomerPage.Name.AssertEquals('Test Customer');

        // You can simulate clicking OK or closing the page, by leaving the procedure as is, or explicitly using functions.
    end;
}