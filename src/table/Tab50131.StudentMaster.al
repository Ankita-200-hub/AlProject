table 50131 "Student_Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Student_Name; Text[40])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Student_Id; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; Teacher_No; Integer)
        {
            DataClassification = ToBeClassified;
            TableRelation = "TeacherMaster"."Teacher_No";
        }
        field(4; Teacher_Name; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; Teacher_phoneNo; Text[9])
        {
            DataClassification = ToBeClassified;
        }

    }


    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}