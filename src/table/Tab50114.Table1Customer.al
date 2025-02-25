table 50114 "Table1_Customer"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Customer ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }


        field(4; "Phone Number"; Text[15])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Created On"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Product ID"; Integer)
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
