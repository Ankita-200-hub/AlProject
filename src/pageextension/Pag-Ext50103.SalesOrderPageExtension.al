pageextension 50103 SalesOrderPageExtension extends "Sales Order"
{
    layout
    {
        addlast(Content)
        {
            group(EmployeeInfo)
            {
                Caption = 'Employee Information';

                field(Event_Flow_Name; Rec.Event_Flow_Name)
                {
                    ApplicationArea = All;

                }
                field(Event_Date; Rec.Event_Date)
                {
                    ApplicationArea = All;

                }
                field("Employee Number"; Rec."Employee Number")
                {
                    ApplicationArea = All;

                }

            }
        }
        addlast(General)
        {
            field("New"; Rec."Employee Number")

            {
                ApplicationArea = All;

            }
        }
    }

    actions
    {

    }
}
