pageextension 50143 GeneralLedgerEntry extends "General Ledger Entries"
{
    layout
    {
        addlast(content)
        {
            group(Posting_Date)
            {
                Caption = 'LedgerEvent';

                field(Event_Flow_Name; Rec.Event_Flow_Name)
                {
                    ApplicationArea = All;

                }
                field(Event_Date; Rec.Event_Date)
                {
                    ApplicationArea = All;

                }


            }
        }

    }


}
