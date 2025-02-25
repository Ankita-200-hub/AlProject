table 50141 "ChangeOrder_listtabel"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Order_Num; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; Order_time; Time)
        {
            DataClassification = ToBeClassified;
        }
        field(3; changeOrder_Num; Integer)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; Order_Num)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
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