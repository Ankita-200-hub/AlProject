page 50116 "Order Line ListPlus"
{
    PageType = ListPlus;
    SourceTable = "table2_Product";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("ID";Rec."Product ID")
                {
                    ApplicationArea = All;
                }


                field("Name";Rec."Product Name")
                {
                    ApplicationArea = All;
                }

                

            }
        }
    }

}
                 
