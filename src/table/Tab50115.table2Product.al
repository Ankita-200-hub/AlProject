table 50115 "table2_Product"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Product ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Product Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }


    }

    keys
    {
        key(PK; "Product ID")
        {
            Clustered = true;
        }
    }
}
