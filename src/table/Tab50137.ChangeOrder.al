table 50137 ChangeOrder
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; changeOrder_Num; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Sales Order ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Customer name"; Text[10])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = Open,Requested,rejected,Approved;
        }
        field(5; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "change date"; Date)
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(Key1; "changeOrder_Num")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        salesOrder: Record "Sales Header";
    begin
        if salesOrder.Get("Sales Order ID") then begin
            "Customer name" := salesOrder."Bill-to Name";
        end;
    end;


    var
        myInt: Integer;



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