pageextension 50113 MyPostedSalesInvoice extends "Posted Sales Invoice"
{
    actions
    {

        addafter(IncomingDocAttachFile)
        {
            group(Processing)
            {

                action(Action)
                {
                    ApplicationArea = All;
                    Caption = 'POSTED_ACTION';
                    //Promoted = true;
                    ////PromotedCategory = Process;
                    //PromotedIsBig = true;

                    trigger OnAction()
                    var
                        openSales: Page "Sales Order";
                    begin
                        openSales.Run();
                        Message('Opened');
                    end;
                }
            }
        }
    }
}
