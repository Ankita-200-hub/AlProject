page 50117 "Document_page"
{
    PageType = Card;
    SourceTable = "Table1_Customer";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(OrderDetails)
            {
                field("ID"; Rec."Customer ID")
                {
                    ApplicationArea = All;
                }

                field("Number"; Rec."Phone Number")
                {
                    ApplicationArea = All;
                }

                field(" Date"; Rec."Created On")
                {
                    ApplicationArea = All;
                }
                field("P_ID"; Rec."Product ID")
                {
                    ApplicationArea = All;
                }


            }
            // part(PurchaseLine; "Order Line ListPlus")
            // {
            //   Caption = 'Linking The Tables';
            //  SubPageLink = "Product ID" = field("Product ID");
            //  }//



        }
    }


}
