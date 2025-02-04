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
    - 
 
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