page 50100 "TTT RewardList"
{
  PageType = List;
  SourceTable = "TTT Reward";
  CardPageId = "TTT RewardCard";
  Caption = 'Reward List';

  layout
  {
    area(content)
    {
      repeater(Group)
      {
        field("Reward ID";"Reward ID")
        {
          ApplicationArea = All;
        }
        field("Description";"Description")
        {
          ApplicationArea = All;
        }
        field("Discount Percentage";"Discount Percentage")
        {
          ApplicationArea = All;
        }
        field("Minimum Purchase";"Minimum Purchase")
        {
          ApplicationArea = All;
        }
        field("Last Modified Date";"Last Modified Date")
        {
          ApplicationArea = All;
        }
      }
    }
  }
}
