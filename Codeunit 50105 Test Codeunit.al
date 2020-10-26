codeunit 50105 "test codeunit"
{
    trigger OnRun()
    begin
        Message('The vlaue of %1 is %2', 'LoopNo', LoopNo);
        Message('The vlaue of %1 is %2', 'YesOrNo', YesOrNo);
        Message('The vlaue of %1 is %2', 'Amount', Amount);
        Message('The vlaue of %1 is %2', 'When Was It', "When Was It");
        Message('The vlaue of %1 is %2', 'What Time', "What Time");
        Message('The vlaue of %1 is %2', 'Description', Description);
        Message('The vlaue of %1 is %2', 'Code Number', "Code Number");
        Message('The vlaue of %1 is %2', 'Ch', Ch);
        Message('The vlaue of %1 is %2', 'Color', Color);
    end;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": Code[10];
        Ch: Char;
        Color: Option Red,Orange,Yellow,Green,Blue,Violet;
}