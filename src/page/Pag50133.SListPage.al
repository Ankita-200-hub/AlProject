page 50133 "S_List_Page"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = Student_Master;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; Rec."Student_Name")
                {
                    Caption = 'S_name';
                }
                field(ID; Rec."Student_Id")
                {
                    Caption = 'S_Id';
                }
                field(Teacher_Name; Rec."Teacher_Name")
                {
                    Caption = 'T_Name';
                }
                field(Number; Rec."Teacher_No")
                {
                    Caption = 'T_No';
                }
                field(Phone; Rec."Teacher_phoneNo")
                {
                    Caption = 'Phone_Num';
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
                ApplicationArea = All;

                trigger OnAction()
                var
                    Rec: Record "Student_Master";
                begin
                    Rec.SetRange("Student_Id", Rec."Student_Id");
                    if Rec.FindFirst() then
                        Page.Run(Page::"S_Card_Page", Rec);
                end;
            }
        }
    }

    var
        myInt: Integer;
}