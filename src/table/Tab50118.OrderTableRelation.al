table 50118 "Order_TableRelation"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Order ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Order Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Customer ID"; Integer)  // foreign key to customer table
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Total Amount"; Decimal)
        {
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

        }
    }
}
