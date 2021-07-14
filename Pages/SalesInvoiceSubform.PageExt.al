PageExtension 50004 pageextension50004 extends "Sales Invoice Subform" 
{
    layout
    {

        //Unsupported feature: Code Modification on "Type(Control 2).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            NoOnAfterValidate;
            UpdateEditableOnRow;
            UpdateTypeText;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            #1..3
            */
        //end;


        //Unsupported feature: Code Modification on "FilteredTypeField(Control 77).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            TempOptionLookupBuffer.SetCurrentType(Type);
            IF TempOptionLookupBuffer.AutoCompleteOption(TypeAsText,TempOptionLookupBuffer."Lookup Type"::Sales) THEN
              VALIDATE(Type,TempOptionLookupBuffer.ID);
            TempOptionLookupBuffer.ValidateOption(TypeAsText);
            UpdateEditableOnRow;
            UpdateTypeText;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            #1..6
            */
        //end;


        //Unsupported feature: Code Modification on ""No."(Control 4).OnValidate".

        //trigger "(Control 4)()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            NoOnAfterValidate;
            UpdateEditableOnRow;
            ShowShortcutDimCode(ShortcutDimCode);
            UpdateTypeText;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            #1..4
            */
        //end;


        //Unsupported feature: Code Modification on "Description(Control 6).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            UpdateEditableOnRow;

            IF "No." = xRec."No." THEN
              EXIT;

            NoOnAfterValidate;
            ShowShortcutDimCode(ShortcutDimCode);
            UpdateTypeText;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            #1..8
            */
        //end;


        //Unsupported feature: Code Modification on "Quantity(Control 8).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            ValidateAutoReserve;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            ValidateAutoReserve;
            */
        //end;


        //Unsupported feature: Code Modification on ""Unit of Measure Code"(Control 34).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            ValidateAutoReserve;
            DeltaUpdateTotals;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            ValidateAutoReserve;
            */
        //end;
        modify("Unit Price")
        {
            Visible = false;
        }
        modify("Line Discount %")
        {
            Visible = false;
        }
        modify("Line Amount")
        {
            Visible = false;
        }
        modify("Line Discount Amount")
        {
            Visible = false;
        }


        //Unsupported feature: Code Modification on ""Invoice Discount Amount"(Control 31).OnValidate".

        //trigger OnValidate()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            DocumentTotals.SalesDocTotalsNotUpToDate;
            ValidateInvoiceDiscountAmount;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            ValidateInvoiceDiscountAmount;
            */
        //end;


        //Unsupported feature: Code Modification on ""Invoice Disc. Pct."(Control 29).OnValidate".

        //trigger  Pct()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            DocumentTotals.SalesDocTotalsNotUpToDate;
            AmountWithDiscountAllowed := DocumentTotals.CalcTotalSalesAmountOnlyDiscountAllowed(Rec);
            InvoiceDiscountAmount := ROUND(AmountWithDiscountAllowed * InvoiceDiscountPct / 100,Currency."Amount Rounding Precision");
            ValidateInvoiceDiscountAmount;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            #2..4
            */
        //end;
        addafter("IC Partner Reference")
        {
            field("Error In Tracking";"Error In Tracking")
            {
                ApplicationArea = Basic;
                Editable = false;
            }
            field("Executed Quantity";"Executed Quantity")
            {
                ApplicationArea = Basic;
            }
        }
        addafter(Description)
        {
            field(Weight;Weight)
            {
                ApplicationArea = Basic;
            }
        }
        addafter("Unit Cost (LCY)")
        {
            field("Executed Number";"Executed Number")
            {
                ApplicationArea = Basic;
                Editable = false;
            }
        }
    }
    actions
    {


        //Unsupported feature: Code Modification on ""Item &Tracking Lines"(Action 1905987604).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            OpenItemTrackingLines;
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            IF "Executed Quantity" = 0 THEN
              MESSAGE(Txt001);

            OpenItemTrackingLines;
            */
        //end;
    }

    var
        Txt001: label 'Executed Quantity is Zero, This may result in Undefined Quantity in tracking';


    //Unsupported feature: Code Modification on "OnDeleteRecord".

    //trigger OnDeleteRecord(): Boolean
    //>>>> ORIGINAL CODE:
    //begin
        /*
        IF (Quantity <> 0) AND ItemExists("No.") THEN BEGIN
          COMMIT;
          IF NOT ReserveSalesLine.DeleteLineConfirm(Rec) THEN
            EXIT(FALSE);
          ReserveSalesLine.DeleteLine(Rec);
        END;
        DocumentTotals.SalesDocTotalsNotUpToDate;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        #1..6
        */
    //end;


    //Unsupported feature: Code Modification on "ApproveCalcInvDisc(PROCEDURE 1)".

    //procedure ApproveCalcInvDisc();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Sales-Disc. (Yes/No)",Rec);
        DocumentTotals.SalesDocTotalsNotUpToDate;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Sales-Disc. (Yes/No)",Rec);
        */
    //end;


    //Unsupported feature: Code Modification on "ValidateInvoiceDiscountAmount(PROCEDURE 22)".

    //procedure ValidateInvoiceDiscountAmount();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        SalesHeader.GET("Document Type","Document No.");
        SalesCalcDiscByType.ApplyInvDiscBasedOnAmt(InvoiceDiscountAmount,SalesHeader);
        DocumentTotals.SalesDocTotalsNotUpToDate;
        CurrPage.UPDATE(FALSE);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        SalesHeader.GET("Document Type","Document No.");
        SalesCalcDiscByType.ApplyInvDiscBasedOnAmt(InvoiceDiscountAmount,SalesHeader);
        CurrPage.UPDATE(FALSE);
        */
    //end;


    //Unsupported feature: Code Modification on "CalcInvDisc(PROCEDURE 8)".

    //procedure CalcInvDisc();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        SalesCalcDiscount.CalculateInvoiceDiscountOnLine(Rec);
        DocumentTotals.SalesDocTotalsNotUpToDate;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        SalesCalcDiscount.CalculateInvoiceDiscountOnLine(Rec);
        */
    //end;


    //Unsupported feature: Code Modification on "ExplodeBOM(PROCEDURE 3)".

    //procedure ExplodeBOM();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Sales-Explode BOM",Rec);
        DocumentTotals.SalesDocTotalsNotUpToDate;
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        CODEUNIT.RUN(CODEUNIT::"Sales-Explode BOM",Rec);
        */
    //end;

    //Unsupported feature: Property Deletion (Attributes) on "ShowPrices(PROCEDURE 15)".



    //Unsupported feature: Code Modification on "UpdateEditableOnRow(PROCEDURE 11)".

    //procedure UpdateEditableOnRow();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        IsCommentLine := NOT HasTypeToFillMandatoryFields;
        UnitofMeasureCodeIsChangeable := NOT IsCommentLine;

        CurrPageIsEditable := CurrPage.EDITABLE;
        InvDiscAmountEditable := CurrPageIsEditable AND NOT SalesSetup."Calc. Inv. Discount";
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        IsCommentLine := NOT HasTypeToFillMandatoryFields;
        IF NOT IsCommentLine THEN
          UnitofMeasureCodeIsChangeable := CanEditUnitOfMeasureCode
        ELSE
          UnitofMeasureCodeIsChangeable := FALSE;
        #3..5
        */
    //end;


    //Unsupported feature: Code Modification on "CalculateTotals(PROCEDURE 6)".

    //procedure CalculateTotals();
    //Parameters and return type have not been exported.
    //>>>> ORIGINAL CODE:
    //begin
        /*
        DocumentTotals.SalesCheckIfDocumentChanged(Rec,xRec);
        DocumentTotals.CalculateSalesSubPageTotals(TotalSalesHeader,TotalSalesLine,VATAmount,InvoiceDiscountAmount,InvoiceDiscountPct);
        DocumentTotals.RefreshSalesLine(Rec);
        */
    //end;
    //>>>> MODIFIED CODE:
    //begin
        /*
        DocumentTotals.CalculateSalesSubPageTotals(TotalSalesHeader,TotalSalesLine,VATAmount,InvoiceDiscountAmount,InvoiceDiscountPct);
        */
    //end;
}

