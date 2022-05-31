declare	@start int = 2 -- inicio
declare	@end int = 1000 --fim
declare @final nvarchar(1000) = '' --salvar aqui
declare @teste int = 0 --teste se é primo

while @start < @end
begin
	
	declare @aux int = sqrt(@start);
	set @teste = 1;
	while @aux > 1
	begin
		if @start % @aux = 0
		begin
			set @teste = 0;
		end;
	set @aux -= 1
	end;

	if @teste = 1
	begin
		set @final += cast(@start as nvarchar(1000)) + '&';
	end

set @start += 1;
end;
select left(@final,len(@final)-1)
