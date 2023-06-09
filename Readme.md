Pillar 1 - Test codeunits and Test functions
    - A test codeunit is defined by its subtype
    - When exec runs the On Run Trigger and each test function
    - See KNH_FirstTest
Pillar 2 - AssertError
    - allows us to write tests that are focused on checking whether errors do occur;
    - See KNH_SecondTest
Pillar 3 - Handler functions
    - offer a way to deal with any user interactions.
    - Handler functions are also known as UI Handlers.
    - Test function handler functions are defined by the FunctionType tag.
    - Each handler function addresses a different type of user interaction object and needs different parameters to let it interact adequately with the platform.
    - Examples ConfirmHandler, Message Handler, PageHandler
    - See KNH_ThirdTest
Pillar 4 - Test Runner and Test Isolation
    - Write transactions that in the end do not alter the database
    - Ensure each running of test uses the same data
    - Accomplished using a test runner codeunit (Subtype = TestRunner) and TestIsolation property (TestIsolation = Codeunit)
    - see KNH_TestRunner
 Pillar 5 - Test pages   
    - A test page is a logical repres of a page and is strictly handled in memory displaying no UI.
    - To define a test page, you need to declare a variable of the TestPage type:
    - PaymentTerms: TestPage "Payment Terms";
    - See KNH_FourthTest

Acceptance Test-Driven Development (ATDD) - FSGWT
-----------------------------------------
FEATURE: Defines what feature(s) the test or collection of test cases is testing 

SCENARIO: Defines for a single test the scenario being tested 

GIVEN: Defines what data setup is needed; a test case can have multiple GIVEN tags when data setup is more complex 

WHEN: Defines the action under test; each test case should have only one WHEN tag 

THEN: Defines the result of the action, or more specifically the verification of the result; if multiple results apply, multiple THEN tags will be needed