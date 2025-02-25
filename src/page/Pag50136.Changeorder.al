page 50136 "Change order"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = ChangeOrder;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("Customer name"; Rec."Customer name")
                {
                    ApplicationArea = All;
                }
                field("Date"; Rec."Date")
                {

                    ApplicationArea = All;
                }
                field("Sales Order ID"; Rec."Sales Order ID")
                {

                    ApplicationArea = All;
                }
                field(Status; Rec."Status")
                {

                    ApplicationArea = All;
                }
                field("change date"; Rec."change date")
                {
                    ApplicationArea = All;

                }
                field(changeOrder_Num; Rec."changeOrder_Num")
                {
                    //Editable=false;
                    ApplicationArea = All;
                    trigger OnValidate()

                    begin
                        if Rec."Status" = Rec."Status"::Requested
                        then
                            Error('Cannot change');
                    end;

                }
                part(ListPart; "changeOrder_listPart")

                {
                    //SourceTable="ChangeOrder_listtabel";
                    Caption = 'PartPortion';
                    SubPageLink = "changeOrder_Num" = field("changeOrder_Num");
                }
            }
        }
    }



}