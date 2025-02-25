page 50138 "S_Card_Page"
{
    PageType = Card;
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



                field("Number"; Rec."Teacher_No")
                {
                    Caption = 'T_No';
                    trigger OnValidate()
                    var
                        teacherRec: Record "TeacherMaster";
                    begin
                        if Rec."Teacher_No" <> ' ' then begin
                            if teacherRec.Get(Rec."Teacher_No") then begin
                                Rec."Teacher_Name" := teacherRec."Teacher_Name";
                                Rec."Teacher_phoneNo" := teacherRec."Teacher_phoneNo";
                            end
                            else begin
                                Error('Teacher NOt Found');
                            end;
                        end;
                    end;
                }
                field(Teacher_Name; Rec."Teacher_Name")
                {
                    Caption = 'T_Name';
                    Editable = false;
                }
                field(Phone; Rec."Teacher_phoneNo")
                {
                    Caption = 'Phone_Num';
                    Editable = false;
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