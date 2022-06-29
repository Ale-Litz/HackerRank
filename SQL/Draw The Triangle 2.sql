--https://www.hackerrank.com/challenges/draw-the-triangle-2/problem?isFullScreen=true

declare @star varchar(100) = ''
declare @inicio int = 1
declare @fim int = 21

while @inicio < @fim
begin
    begin
        set @star = cast(@star as nvarchar(100)) + '* ';
    end
    select @star
set @inicio += 1;
end;
