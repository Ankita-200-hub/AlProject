table 50110 "Employee Master"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Employee ID"; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(2; "Employee Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Employee Address"; Text[200])
        {
            DataClassification = ToBeClassified;
        }

        field(4; "Customer ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            tableRelation = Customer.SystemId;
        }

        field(5; "Date of Joining"; Date)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Employee ID")
        {
            Clustered = true;
        }
    }


}
