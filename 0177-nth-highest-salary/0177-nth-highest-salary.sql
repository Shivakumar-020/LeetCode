CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        /* Write your T-SQL query statement below. */
        select
            case
                when @N-1 < 0 then null
                else
                (
                    select
                        distinct salary 
                    from Employee
                    order by salary desc
                    offset case when @N-1 < 0 then 0 else @N-1 end row
                    fetch next 1 row only
                )
            end as "getNthHighestSalary(@N)"
    );
END