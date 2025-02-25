page 50130 "Customer Sales Order Count"
{
    PageType = List;
    SourceTable = Customer;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer No."; Rec."No.")
                {
                    Caption = 'Customer No.';
                }

                field("Customer Name"; Rec."Name")
                {
                    Caption = 'Customer Name';
                }

                field("Sales Order Count"; SalesOrderCount)
                {
                    Caption = 'Sales Order Count';
                    Editable = false;
                }
            }
        }
    }

    var
        SalesHeaderRec: Record "Sales Header";
        SalesOrderCountVariable: Integer;
        SalesOrderCount: Text[20];
        CustomerRec: Record Customer;

    trigger OnOpenPage()
    begin

        CalculateSalesOrderCount('Ankita');
    end;

    procedure CalculateSalesOrderCount(CustomerName: Text)
    begin

        if CustomerRec.Get(CustomerName) then
            SalesHeaderRec.SetRange("Sell-to Customer No.", CustomerRec."No.");

        SalesOrderCountVariable := 0;


        if SalesHeaderRec.FindSet() then
            repeat
                SalesOrderCountVariable := SalesOrderCountVariable + 1;
            until SalesHeaderRec.Next() = 0;


        SalesOrderCount := Format(SalesOrderCountVariable);
    end;


}
