codeunit 50101 "TTT RewardsUpgradeCode"
{
    Subtype = Upgrade;

    trigger OnUpgradePerCompany();
    var
        InstallCode : Codeunit "TTT RewardsInstallCode";
        Reward : record "TTT Reward";
        Module : ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Module);

        if Module.DataVersion.Major = 1 then begin
            Reward.Get('BRONZE');
            Reward.Rename('ALUMINUM');
            Reward.Description := 'Aluminum Level';
            Reward.Modify(true);
        end;
    end;
}