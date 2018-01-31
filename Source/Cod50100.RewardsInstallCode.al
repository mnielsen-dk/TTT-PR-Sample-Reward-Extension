codeunit 50100 "TTT RewardsInstallCode"
{
    Subtype = Install;

    trigger OnInstallAppPerCompany();
    var
        Reward : Record "TTT Reward";
    begin
        if Reward.IsEmpty then
            InsertDefaultRewards();
    end;
    
    procedure InsertDefaultRewards();
    begin
        InsertRewardLevel('GOLD', 'Gold Level', 20);
        InsertRewardLevel('SILVER', 'Silver Level', 10);
        InsertRewardLevel('Bronze', 'Bronze Level', 5);
    end;

    procedure InsertRewardLevel(ID : Code[30]; Description : Text[250]; Discount : Decimal);
    var
        Reward : Record "TTT Reward";
    begin
        Reward.Init();
        Reward."Reward ID" := ID;
        Reward.Description := Description;
        Reward."Discount Percentage" := Discount;
        Reward.Insert(true);
    end;
}