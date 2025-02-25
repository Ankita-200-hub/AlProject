tableextension 50104 MyVendorExtension1 extends Vendor
{
    fields
    {
        field(50000; "Custom Text Field"; Text[100])
        {
            Caption = 'Social Media';
            DataClassification = ToBeClassified;
        }
        field(50001; "Social Media"; Text[100])
        {
            Caption = 'Social Media';
            DataClassification = ToBeClassified;
        }
    }
}