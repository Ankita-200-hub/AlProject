page 50140 "changeOrder_listPart"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = ChangeOrder_listtabel;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {

                field(Order_Num; Rec."Order_Num")
                {
                    ApplicationArea = All;
                }
                field(Order_time; Rec."Order_time")
                {
                    ApplicationArea = All;
                }
                field(OrderNum; Rec."changeOrder_Num")
                {
                    ApplicationArea = All;
                }


            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}