page 50103 "Course List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Course;
    CardPageId = "Course Card";
    Editable = false;
    Caption = 'Course List';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(code; Code)
                {
                    ApplicationArea = All;

                }
                field(Name; Name)
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;

                }
                field(Level; Level)
                {
                    ApplicationArea = ALL;
                }
                field(Suggestion; Suggestion)
                {
                    ApplicationArea = ALL;
                }
                field(SPA; SPA)
                {
                    ApplicationArea = ALL;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
            action("Insert Table")
            {
                trigger onAction();
                begin
                    InsertNewRecord();
                end;
            }
        }
    }
    var
        Level: text[30];
        Suggestion: text[80];
        SPA: Boolean;

    procedure insertNewRecord();
    var
        courseRec: Record Course;
    begin
        with courseRec do begin
            Init();
            Code := '80040';
            Name := 'Installation & Configuration';
            Description := 'Basic knowledge of Installation & Configuration';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80041';
            Name := 'Finance';
            Description := 'Basic knowledge of finance';
            Type := Type::"Instructor Led";
            Duration := 3.0;
            Price := 1500.0;
            Active := true;
            Difficulty := 7;
            PassingRate := 80;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80042';
            Name := 'C/SIDE Introduction';
            Description := 'Introdution to programming';
            Type := Type::"Instructor Led";
            Duration := 5.0;
            Price := 2500.0;
            Active := true;
            Difficulty := 8;
            PassingRate := 80;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80043';
            Name := 'Introduction';
            Description := 'Introdution to Microsoft Dynamics Nav';
            Type := Type::"Remote Training";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 4;
            PassingRate := 60;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80049';
            Name := 'Appliction setup';
            Description := 'Basic knowledge of appliction setup';
            Type := Type::"e-Learning";
            Duration := 2.0;
            Price := 1000.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 65;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80050';
            Name := 'Business Intelligence';
            Description := 'Basic knowledge of Business Intelligence';
            Type := Type::"e-Learning";
            Duration := 1.0;
            Price := 500.0;
            Active := true;
            Difficulty := 5;
            PassingRate := 65;
            Insert;
            Message('Already Insert');
        end;
        with courseRec do begin
            Init();
            Code := '80055';
            Name := 'C/SIDE Solution Develoment';
            Description := 'Advanced topics in programming';
            Type := Type::"Instructor Led";
            Duration := 5.0;
            Price := 2500.0;
            Active := true;
            Difficulty := 10;
            PassingRate := 75;
            Insert;
            Message('Already Insert');
        end;
    end;

    trigger OnAfterGetCurrRecord();
    begin
        Level := '';
        Suggestion := '';
        SPA := false;
        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-elearning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend insertior-Led';

                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
        if (PassingRate >= 70) And (Difficulty >= 6) then
            SPA := true;
    end;
}