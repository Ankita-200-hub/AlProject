page 50119 "Table_Page_Relation"
{
    PageType = Card;
    SourceTable = "Customer_TableRelation";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Order ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                }

                field("Order Date"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }

                field("Total Amount"; Rec."Customer Email")
                {
                    ApplicationArea = All;
                }

                // part(OrderList; "Table_Page_Relation_Order")
                //{
                //  ApplicationArea = All;
                // SubPageLink = "Customer ID" = field("Customer ID");
                //}
            }
        }
    }


    trigger OnOpenPage()
    var
        CustomerRec: Record "Order_TableRelation";
    begin

    end;
}
