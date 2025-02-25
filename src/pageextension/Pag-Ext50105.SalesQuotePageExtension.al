pageextension 50105 SalesQuotePageExtension extends "Sales Quote"
{
    layout
    {
        addlast(General)
        {
            field("Employee Number"; Rec."Employee Number")
            {
                Caption = 'Employee Number';
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        addlast(Processing)
        {
            action(ShowEmployeeNumber)
            {
                ApplicationArea = All;
                trigger OnAction()
                var
                    Message: Text;
                begin
                    Message('Employee_Info')
                end;
            }
        }
    }
}