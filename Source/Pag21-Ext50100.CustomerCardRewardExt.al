pageextension 50100 "TTT RewardCustomerExt" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID";"Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(Navigation)
        {
            action("TTT Rewards")
            {
                Caption = 'Rewards';
                ApplicationArea = All;
                RunObject = page "TTT RewardList";
            }
        }
    }
}