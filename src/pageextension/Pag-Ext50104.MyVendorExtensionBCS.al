pageextension 50104 MyVendorExtensionBCS extends "Vendor Card"
{
    layout
    {

        addlast(General)
        {
            field("NewTextColumn"; Rec."Social Media")
            {
                ApplicationArea = All;

            }
        }
        addlast(Content)
        {
            group("Ankita")
            {
                field("CustomField"; Rec."Custom Text Field")

                {
                    ApplicationArea = All;

                }
            }
        }
    }
}
