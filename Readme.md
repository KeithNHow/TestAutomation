# Test codeunits and Test functions
    - Subtype Test: Specifies the codeunit is a Test codeunit.
    - [Test]: Specifies the method is a Test method. 
# AssertError
    - asserterror: Specifies that an error should be displayed.
# Handler functions
    - [Handler Function]: Specifies the handler methods that are used by the test method.
    - [Message Handler]: The MessageHandler method is called when a message method is invoked in the code.
    - [Confirm Handler]: 
    - [StrMenu Handler]: 
    - [Page Handler]: 
    - [ModalPageHandler]: 
    - [ReportHandler]
    - [FilterPageHandler]
    - [RequestPageHandler]
    - [HyperLinkHandler]
    - [SendNotificationHandler]
 
# Test Runner and Test Isolation
    - SubType TestRunner: Specifies the codeunit is of type TestRunner. TestRunner allows for the running of multiple tests in a single run.
    - TestIsolation: Property allows for rollback of test data after each test.
# Test pages   
    - TestPage: Specifies the page is of type Test.

# Acceptance Test-Driven Development (ATDD) - FSGWT
# -------------------------------------------------
FEATURE: Defines what feature(s) the test or collection of test cases is testing 

SCENARIO: Defines for a single test the scenario being tested 

GIVEN: Defines what data setup is needed; a test case can have multiple GIVEN tags when data setup is more complex 

WHEN: Defines the action under test; each test case should have only one WHEN tag 

THEN: Defines the result of the action, or more specifically the verification of the result; if multiple results apply, multiple THEN tags will be needed

# Note
One Feature can have multiple Scenarios
One Scenario can have multiple Givens
One Scenario can have only one When
One Scenario can have multiple results

[FEATURE] LookupValue Customer 
------------------------------
[SCENARIO] [#0001] Assign lookup value to customer 
[GIVEN] A lookup value 
[GIVEN] A customer 
[WHEN] Set lookup value to customer 
[THEN] Customer has lookup value code field populated

[FEATURE] LookupValue UT Customer 
---------------------------------
[SCENARIO] [#0002] Assign non-existing lookup value to customer 
[GIVEN] A non-existing lookup value 
[GIVEN] A customer 
[WHEN] Set non-existing lookup value on customer 
[THEN] Non existing lookup value error thrown

[SCENARIO] [#0003] Assign lookup value on customer card 
[GIVEN] A lookup value 
[GIVEN] A customer card 
[WHEN] Set lookup value on customer card 
[THEN] Customer has lookup value code field populated

[FEATURE] Assign Lookup Value
-----------------------------
[SCENARIO] [#0004] Assign lookup value to sales header 
[SCENARIO] [#0005] Assign non-existing lookup value on sales header 
[SCENARIO] [#0006] Assign lookup value on sales quote document page 
[SCENARIO] [#0007] Assign lookup value on sales order document page 
[SCENARIO] [#0008] Assign lookup value on sales invoice document page 
[SCENARIO] [#0009] Assign lookup value on sales credit memo document page 
[SCENARIO] [#0010] Assign lookup value on sales return order document page 
[SCENARIO] [#0011] Assign lookup value

[SCENARIO] [#0012] Assign lookup value to customer template 
[GIVEN] A lookup value 
[GIVEN] A customer template 
[WHEN] Set lookup value on customer template 
[THEN] Customer template has lookup value code field populate 

[SCENARIO] [#0013] Assign non-existing lookup value to customer template 
[GIVEN] A non-existing lookup value 
[GIVEN] A customer template record variable 
[WHEN] Set non-existing lookup value to customer template 
[THEN] Non existing lookup value error was thrown 

[SCENARIO] [#0014] Assign lookup value on customer template card 
[GIVEN] A lookup value 
[GIVEN] A customer template card 
[WHEN] Set lookup value on customer template card 
[THEN] Customer template has lookup value code field populated

[FEATURE] LookupValue Sales Archive 
-----------------------------------
[SCENARIO] [#0018] Archive sales order with lookup value 
[GIVEN] A sales order with a lookup value 
[WHEN] Sales order is archived 
[THEN] Archived sales order has lookup value from sales order 

[SCENARIO] [#0019] Archive sales quote with lookup value 
[GIVEN] A sales quote with a lookup value 
[WHEN] Sales quote is archived 
[THEN] Archived sales quote has lookup value from sales quote 

[SCENARIO] [#0020] Archive sales return order with lookup value 
[GIVEN] A sales return order with a lookup value 
[WHEN] Sales return order is archived 
[THEN] Archived sales return order has lookup value from sales return order

[FEATURE] LookupValue Inheritance 
---------------------------------
[SCENARIO] [#0028] Create customer from configuration template with lookup value 
[GIVEN] A configuration template (customer) with lookup value 
[WHEN] Create customer from configuration template 
[THEN] Lookup value on customer is populated with lookup value of configuration template

[FEATURE] LookupValue Report 
----------------------------
[SCENARIO] [#0029] Test that lookup value shows on CustomerList report 
[GIVEN] 2 customers with different lookup value 
[WHEN] Run report CustomerList 
[THEN] Report dataset contains both customers with lookup value
