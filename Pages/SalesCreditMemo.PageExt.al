PageExtension 50002 pageextension50002 extends "Sales Credit Memo" 
{
    layout
    {
        modify(Billing)
        {
            Caption = 'Invoicing';

            //Unsupported feature: Property Modification (Name) on "Billing(Control 1905885101)".

        }

        //Unsupported feature: Property Modification (Level) on ""Bill-to County"(Control 42)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Address"(Control 65)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Address 2"(Control 67)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to City"(Control 69)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to County"(Control 34)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Post Code"(Control 18)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Country/Region Code"(Control 32)".

        modify("Due Date")
        {
            Visible = false;
        }
        modify("Applies-to Doc. Type")
        {
            Visible = false;
        }
        modify("Applies-to Doc. No.")
        {
            Visible = false;
        }
        modify("Applies-to ID")
        {
            Visible = false;
        }
        modify("Prices Including VAT")
        {
            Visible = false;
        }
        modify("Payment Discount %")
        {
            Visible = false;
        }
        modify("Pmt. Discount Date")
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Address"(Control 22)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Address 2"(Control 24)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to City"(Control 26)".

        modify(Control55)
        {
            Visible = false;
        }

        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to County"(Control 42)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Post Code"(Control 38)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Country/Region Code"(Control 40)".

        addafter("Bill-to Contact")
        {
            field("Buyer ID/Card No.";"Buyer ID/Card No.")
            {
                ApplicationArea = Basic;
            }
            field("Due Date";"Due Date")
            {
                ApplicationArea = Basic;
            }
            field("Payment Discount %";"Payment Discount %")
            {
                ApplicationArea = Basic;
            }
            field("Pmt. Discount Date";"Pmt. Discount Date")
            {
                ApplicationArea = Basic;
            }
            field("Bonus Payment";"Bonus Payment")
            {
                ApplicationArea = Basic;
            }
            field("Prices Including VAT";"Prices Including VAT")
            {
                ApplicationArea = Basic;
            }
            field("Applies-to Doc. Type";"Applies-to Doc. Type")
            {
                ApplicationArea = Basic;
            }
            field("Applies-to Doc. No.";"Applies-to Doc. No.")
            {
                ApplicationArea = Basic;
            }
            field("Applies-to ID";"Applies-to ID")
            {
                ApplicationArea = Basic;
            }
        }
    }

    var
        WshShell: Automation WshShell;

    local procedure "//Navimeat"()
    begin
    end;

    procedure RefreshPage()
    begin
        if ISCLEAR(WshShell) then
           Create(WshShell, true, true);
        WshShell.SendKeys('{F5}');
    end;
}

