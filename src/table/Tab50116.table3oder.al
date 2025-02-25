table 50116 "table3_oder"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Order ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Customer ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Option"; Option)
        {
            OptionMembers = "Pending","Shipped","Delivered","Cancelled";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Order ID")
        {
            Clustered = true;
        }

        key(CustomerKey; "Customer ID")
        {
            Clustered = false;
        }
    }
}
