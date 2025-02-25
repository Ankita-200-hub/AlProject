pageextension 50103 SalesOrderPageExtension extends "Sales Order"
{
    layout
    {
        addlast(Content)
        {
            group(EmployeeInfo)
            {
                Caption = 'Employee Information';

                field("Employee Number"; Rec."Employee Number")
                {
                    ApplicationArea = All;

                }
            }
        }
        addlast(General)
        {
            field("NewTextColumn"; Rec."Employee Number")

            {
                ApplicationArea = All;

            }
        }
    }

    actions
    {

    }
}
