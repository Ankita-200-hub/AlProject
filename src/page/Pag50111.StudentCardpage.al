page 50111 "Student_Cardpage"
{
    PageType = Card;
    ApplicationArea = All;
    SourceTable = Table_Student;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec."Student_Name")
                {
                    ApplicationArea = All;
                }
                field(ID; Rec."Studen_ID")
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