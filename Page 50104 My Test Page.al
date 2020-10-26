page 50104 "My Test Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Course;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(value1; value1)
                {
                    ApplicationArea = All;

                }
                field(value2; value2)
                {
                    ApplicationArea = All;

                }
            }
            group(Output)
            {
                field(result; result)
                {
                    ApplicationArea = ALL;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Execute")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    execute_Result()
                end;
            }
            action("Test Codeunit")
            {
                ApplicationArea = ALL;
                trigger OnAction()
                begin
                    test_codeunit();
                end;
            }
        }
    }

    var
        myInt: Integer;
        value1: Integer;
        value2: Integer;
        result: Boolean;

    procedure execute_Result();
    begin
        result := value1 > value2;
    end;

    procedure test_codeunit();
    begin
        Codeunit.Run(50105);
    end;
}