table 50132 TeacherMaster
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Teacher_No; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Teacher_Name; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Teacher_phoneNo; Text[9])
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