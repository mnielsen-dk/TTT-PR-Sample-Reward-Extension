page 50101 "TTT RewardCard"
{
    PageType = Card;
    SourceTable = "TTT Reward";
    Caption = 'Reward Card';

    layout
    {
        area(content)
        {
            group(Reward)
            {
                field("Reward ID";"Reward ID")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field("Discount Percentage";"Discount Percentage")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}