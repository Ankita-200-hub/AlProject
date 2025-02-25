table 50111 "Table_Student"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Student_Name; Text[40])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Studen_ID; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Student_Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        Message('On Inserted');
    end;

    trigger OnModify()
    begin
        Message('On Modify');
    end;

    trigger OnDelete()
    begin
        Message('On Delete');
    end;

    trigger OnRename()
    begin
        Message('On Rename');
    end;

}