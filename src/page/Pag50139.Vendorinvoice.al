page 50139 "Vendor_invoice"
{
    PageType = List;
    SourceTable = "Purchase Header";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'Purchase Order No.';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ShowInvoice)
            {
                ApplicationArea = All;
                Caption = 'Show';
                trigger OnAction()
                var
                    PurchHeaderRec: Record "Purchase Header";
                begin

                    if PurchHeaderRec.FindSet() then
                        repeat
                            if PurchHeaderRec."Vendor Invoice No." = 'INV' then
                                Message('%1 "INV".', PurchHeaderRec."No.");
                        until PurchHeaderRec.Next() = 0;
                end;
            }
        }
    }
}
