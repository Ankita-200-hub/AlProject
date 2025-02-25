page 50135 "T_List_Page"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = TeacherMaster;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Number; Rec."Teacher_No")
                {
                    Caption = 'Teacher_No';
                }
                field(Name; Rec."Teacher_Name")
                {
                    Caption = 'Teacher_Name';
                }
                field(Phone; Rec."Teacher_phoneNo")
                {
                    Caption = 'Teacher_phoneNo';
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