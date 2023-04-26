--https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem?isFullScreen=true

declare @min_data date = (select min(submission_date ) from Submissions)
declare @max_data date = (select max(submission_date ) from Submissions)
declare @cnt_dias int  = 1

declare @inc_data date = (select min(submission_date ) from Submissions)
declare @inc_qtde int  = 0
declare @hacke_id int  = 0

create table #temp_table(
    data date,
    qtde int,
    h_id int,
)

while @inc_data <= @max_data
begin
    
    set @inc_qtde = (
    select count(aux_qtde.qtde) 
    from(
        select
            su.hacker_id as h_id,
            count(distinct(su.submission_date)) as qtde
        from Submissions su
        where su.submission_date between @min_data and @inc_data
        group by su.hacker_id)aux_qtde
    where aux_qtde.qtde >= @cnt_dias)
    
    set @hacke_id = (
    select top(1) aux_h_id.h_id
    from(
        select
            su.hacker_id as h_id,
            count(su.submission_date) as qtde
        from Submissions su
        where su.submission_date = @inc_data
        group by su.hacker_id) aux_h_id
    order by aux_h_id.qtde desc, aux_h_id.h_id)
    
    insert into #temp_table(data,qtde,h_id)
    values(@inc_data,@inc_qtde,@hacke_id)
    
set @inc_data = dateadd(day, 1, @inc_data)
set @cnt_dias += 1
end 

select 
   temp.data
   ,temp.qtde
   ,temp.h_id
   ,hack.name
from #temp_table temp
left join Hackers hack on temp.h_id = hack.hacker_id
order by temp.data

drop table #temp_table;
