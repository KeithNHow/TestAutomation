/// <summary>
/// Codeunit KNH_PurchaseInvoice (ID 51407).
/// </summary>
codeunit 51407 "KNH_VendorDiscount"
{
    // Specifies the codeunit to be a test codeunit
    Subtype = Test;

    trigger OnRun()
    begin

    end;

    // Makes the method a test method
    [Test]

    // Adds the test logic to the test method
    procedure PurchInvDiscCalculationPInvAbove()

    var
        PurchaseLine: Record "Purchase Line";
#pragma warning disable AA0072
        PurchCalcDisc: Codeunit "Purch.-Calc.Discount";
#pragma warning restore AA0072
        MinAmount: Decimal;
        DocAmount: Decimal;
        DiscountPct: Decimal;
    begin
        // [SCENARIO] "Inv. Discount Amount" should be calculated on Purchase Invoice (in LCY), where Invoice amount is
        // above the minimal amount required for invoice discount calculation.
        // [GIVEN] Vendor with invoice discount percentage "D" for minimal amount "A" in LCY
        // [GIVEN] Create purchase invoice with one line and amount > "A"
        DiscountPct := RandomNumberGenerator.RandDec(100, 5);
        MinAmount := RandomNumberGenerator.RandDec(1000, 2);
        DocAmount := MinAmount + RandomNumberGenerator.RandDec(100, 2);
        CreatePurchDocument(PurchaseLine, PurchaseLine."Document Type"::Invoice, DocAmount, MinAmount, DiscountPct);
        // [WHEN] Calculate invoice discount for purchase document (line)
        PurchCalcDisc.RUN(PurchaseLine);
        // [THEN] "Inv. Discount Amount" = Amount "A" * discount "D" / 100
        PurchaseLine.FindFirst();
        Assert.AreEqual(Round(PurchaseLine."Line Amount" * DiscountPct / 100), PurchaseLine."Inv. Discount Amount", PurchInvDiscErr);
    end;

    // Creates the test helper method
    local procedure CreatePurchDocument(var pPurchaseLine: Record "Purchase Line"; DocumentType: Enum "Purchase Document Type"; DocAmount: Decimal; MinAmount: Decimal; DiscountPct: Decimal)
    var
        VendorInvoiceDisc: Record "Vendor Invoice Disc.";
        PurchaseHeader: Record "Purchase Header";
        VendorNo: Code[20];
    begin
        // Create vendor
        VendorNo := LibraryPurchase.CreateVendorNo;
        // Create vendor invoice discount
        VendorInvoiceDisc.Init();
        VendorInvoiceDisc.Code := VendorNo;
        VendorInvoiceDisc.Validate("Currency Code", '');
        VendorInvoiceDisc.Validate("Minimum Amount", MinAmount);
        VendorInvoiceDisc.Validate("Discount %", DiscountPct);
        VendorInvoiceDisc.Insert(true);
        // Create purchase line
        LibraryPurchase.CreatePurchaseDocumentWithItem(PurchaseHeader, pPurchaseline, DocumentType, VendorNo, '', 1, '', 0D);
        pPurchaseLine.Validate("Direct Unit Cost", DocAmount);
        pPurchaseLine.Modify(true);
    end;

    var
        RandomNumberGenerator: Codeunit "Library - Random";
        LibraryPurchase: Codeunit "Library - Purchase";
        Assert: Codeunit Assert;
        PurchInvDiscErr: Label 'The Purchase Invoice Discount Amount was not calculated correctly.';
}
