tableextension 50103 SalesHeaderExtension extends "Sales Header"
{
    fields
    {
        field(50100; "Employee Number"; Integer)
        {
            Caption = 'EMPLOYEE NUMBER';
            DataClassification = ToBeClassified;
        }
        field(50101; Event_Flow_Name; Text[12])
        {
            DataClassification = ToBeClassified;
        }
        field(50102; Event_Date; Time)
        {
            DataClassification = ToBeClassified;
        }
    }



}
