table 50100 "TTT Reward"
{
    Caption = 'Reward';

    fields
    {
        // The "Reward ID" field represents the unique identifier 
        // of the reward and can contain up to 30 Code characters. 
        field(1;"Reward ID";Code[30])
        {
            Caption = 'Reward ID';
            NotBlank = true;
        }
        // The "Description" field can contain a string 
        // with up to 250 characters.
        field(2;"Description";Text[250])
        {
            Caption = 'Description';
            NotBlank = true;
        }
        // The "Discount Percentage" field is a Decimal numeric value
        // that represents the discount that will 
        // be applied for this reward.
        field(3;"Discount Percentage";Decimal)
        {
            Caption = 'Discount Percentage';
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
        }
        field(4;"Minimum Purchase";Decimal)
        {
            Caption = 'Minimum Purchase';
            MinValue = 0;
            DecimalPlaces = 2;
        }
        field(5;"Last Modified Date";Date)
        {
            Caption = 'Last Modified Date';
            Editable = false;
        }
    }

    keys
    {
        key(PK;"Reward ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert();
    begin
        SetLastModifiedDate();
    end;

    trigger OnModify();
    begin
        SetLastModifiedDate();
    end;

    trigger OnRename();
    begin
        SetLastModifiedDate();
    end;

    local procedure SetLastModifiedDate();
    begin
        "Last Modified Date" := Today;
    end;
}