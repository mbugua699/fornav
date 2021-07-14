PageExtension 50001 pageextension50001 extends "Sales Invoice" 
{
    layout
    {
        modify(BillToOptions)
        {
            OptionCaption = 'Default (Customer),Another Customer';
        }

        //Unsupported feature: Property Modification (Visible) on "Control205(Control 205)".

        modify("Bill-to Address")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to Address 2")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to City")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to County")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to Post Code")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to Country/Region Code")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to Contact No.")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }
        modify("Bill-to Contact")
        {
            Enabled = "Bill-to Customer No." <> "Sell-to Customer No.";
            Editable = "Bill-to Customer No." <> "Sell-to Customer No.";
        }

        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Address"(Control 75)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Address 2"(Control 77)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to City"(Control 79)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to County"(Control 70)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Post Code"(Control 81)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Sell-to Country/Region Code"(Control 73)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to Address"(Control 38)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to Address 2"(Control 40)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to City"(Control 42)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to County"(Control 89)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to Post Code"(Control 80)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Ship-to Country/Region Code"(Control 17)".


        //Unsupported feature: Property Deletion (Enabled) on ""Bill-to Name"(Control 14)".


        //Unsupported feature: Property Deletion (Editable) on ""Bill-to Name"(Control 14)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Address"(Control 18)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Address 2"(Control 20)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to City"(Control 22)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to County"(Control 92)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Post Code"(Control 91)".


        //Unsupported feature: Property Deletion (QuickEntry) on ""Bill-to Country/Region Code"(Control 93)".

    }
    actions
    {

        //Unsupported feature: Property Deletion (PromotedCategory) on ""Function_CustomerCard"(Action 6)".


        //Unsupported feature: Code Modification on "Post(Action 71).OnAction".

        //trigger OnAction()
        //Parameters and return type have not been exported.
        //>>>> ORIGINAL CODE:
        //begin
            /*
            Post(CODEUNIT::"Sales-Post (Yes/No)",NavigateAfterPost::"Posted Document");
            */
        //end;
        //>>>> MODIFIED CODE:
        //begin
            /*
            COMMIT;
            Post(CODEUNIT::"Sales-Post (Yes/No)",NavigateAfterPost::"Posted Document");
            */
        //end;
    }


    //Unsupported feature: Property Modification (OptionString) on "BillToOptions(Variable 1051)".

    //var
        //>>>> ORIGINAL VALUE:
        //BillToOptions : "Default (Customer)","Another Customer","Custom Address";
        //Variable type has not been exported.
        //>>>> MODIFIED VALUE:
        //BillToOptions : "Default (Customer)","Another Customer";
        //Variable type has not been exported.

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

