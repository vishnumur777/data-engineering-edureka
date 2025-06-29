# T-SQL

- if
- loop

## Create Variabes

```sql
Declare name varchar(30) default 'India';```

## set variables

```sql
set variable_name='Great India';```

## create procedure

```sql
create procedure <procedure_name>
begin
..............
.............
.............
end$$
delimiter;```

## parameters in stored procedures

- in
- out
- inout

- `in` - bring input inside the function
- `out` - give output after function ends
- `inout` - take input and give output

## create function

```sql
create function fun1(str varchar(30))
    returns varchar(50) deterministic
        returns concat(str+' '+'super')
```

## cursor

### steps to create cursor

1. create cursor
2. open cursor loop
3. fetch values from cursor into variables
4. end loop
5. close cursor

```sql

```