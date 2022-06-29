--https://www.hackerrank.com/challenges/draw-the-triangle-1/problem?isFullScreen=true

declare @star varchar(100) = ''
declare @inicio int = 1
declare @cnt int = 0
declare @fim int = 20

while @inicio <= @fim
begin
set @cnt = (@inicio - @fim)
set @star = ''
    while @cnt <= 0
    begin
        set @star = cast(@star as nvarchar(100)) + '* ';
        set @cnt += 1;
    end
    select @star
set @inicio += 1;
end;
