table 50117 "Customer_TableRelation"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Customer Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Customer ID")
        {
            Clustered = true;
        }
    }
}

