page 50112 "Student_List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Table_Student;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; Rec.Student_Name)
                {
                    trigger OnValidate()
                    var
                        Message: Text;
                    begin
                        if Rec."Student_Name" = '' then
                            Error(' Student Not present');
                    end;

                }
                field(ID; Rec.Studen_ID)
                {

                }

            }
        }
        area(Factboxes)
        {

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
}