tableextension 50100 "TTT RewardCustomerExt" extends Customer
{
    fields
    {
        field(50100;"Reward ID";Code[30])
        {
            TableRelation = "TTT Reward"."Reward ID";
            ValidateTableRelation = true;
            trigger OnValidate()
            begin
                if ("Reward ID" <> xRec."Reward ID") and
                   (Blocked <> Blocked::" ") then
                begin
                    Error('Cannot update the rewards status of a blocked customer.');
                end;
            end;
        }
    }
}