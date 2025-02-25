pageextension 50122 RunningAPage extends "Sales Invoice"
{
    layout
    {

    }

    actions
    {
        addlast(processing)
        {
            action("open Sales Order")
            {
                ApplicationArea = All;
                Caption = 'OPEN SALES ORDER';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;


                trigger OnAction()
                var
                    SaleOrderPage: page "Sales Order";
                begin
                    SaleOrderPage.Run();
                end;
            }
        }

    }

    var
        myInt: Integer;
}