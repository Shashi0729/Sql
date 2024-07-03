
select * from Employee;
select * from Employee where id=1 and emp_exp=5;
select * from Employee where emp_id=201 and emp_exp=5;
select * from Employee where mgr_id=202 and emp_exp=12;
select * from Employee where id=11 and emp_exp=5;
select * from Employee where emp_sal=50000 and emp_exp=5;

select * from Employee where id=1 or emp_exp=5;
select * from Employee where emp_id=201 or emp_exp=5;
select * from Employee where mgr_id=202 or emp_exp=12;
select * from Employee where id=11 or emp_exp=5;
select * from Employee where emp_sal=50000 or emp_exp=5;

select * from Product;
select * from Product where id=5 or prd_brand="Apple";
select * from Product where prd_name="Samsung TV" or prd_quantity=40 ;
select * from Product where prd_price=14999.00 or prd_name="Nike Shoes" ;
select * from Product where id=16 or prd_quantity=100;
select * from Product where manufactured_by="Nike Inc." or prd_quantity=55;

select * from Product where id in(1,2,3) ;
select prd_quantity , id from Product where id in(1,2,3) ;
select prd_brand , id from Product where id in(4,5,6) ;
select prd_price, id from Product where id in(7,8,9) ;
select prd_price from Product where id in(2,8,6) ;

select * from Product where id not in(1,2,3) ;
select prd_quantity , id from Product where id not in(1,2,3) ;
select prd_brand , id from Product where id not in(4,5,6) ;
select prd_price, id from Product where id not in(7,8,9) ;
select prd_price from Product where id not in(2,8,6) ;

select * from employee where id in(1,2,3) ;
select emp_id , id from employee where id in(1,2,3) ;
select emp_name , id from employee where id in(4,5,6) ;
select emp_dept, id from employee where id in(7,8,9) ;
select emp_sal from employee where id in(2,8,6) ;

select * from employee where id not in(1,2,3) ;
select emp_id , id from employee where id not in(1,2,3) ;
select emp_name , id from employee where id not in(4,5,6) ;
select emp_dept, id from employee where id not in(7,8,9) ;
select emp_sal from employee where id not in(2,8,6) ;

select * from employee where id between 15 and 20 ;
select emp_id , id from employee where id between 1 and 10 ;
select emp_name , id from employee where id between 10 and 20 ;
select emp_dept, id from employee where id between 1 and 20 ;
select emp_sal from employee where id between 1 and 15;

select * from employee where id not between 15 and 20 ;
select emp_id , id from employee where id not between 1 and 10 ;
select emp_name , id from employee where id not between 10 and 20 ;
select emp_dept, id from employee where id not between 1 and 20 ;
select emp_sal from employee where id not between 1 and 15;

select * from Product where id not between 1 and 10 ;
select prd_quantity , id from Product where id not between 2 and 12 ;
select prd_brand , id from Product where id not between 13 and 17 ;
select prd_price, id from Product where id not between 1 and 3 ;
select prd_price from Product where id not between 10 and 15 ;

select * from Product where id between 1 and 10 ;
select prd_quantity , id from Product where id  between 2 and 12 ;
select prd_brand , id from Product where id  between 13 and 17 ;
select prd_price, id from Product where id  between 1 and 3 ;
select prd_price from Product where id  between 10 and 15 ;

select * from Product where prd_name like 'A%h' ;
select * from Product where prd_name like 'S%' ;
select * from Product where  prd_name like 'n%';
select * from Product where  prd_name like '%h' ;
select * from Product where prd_name like 'h%';

select * from Product where prd_name not like 'A%h' ;
select * from Product where prd_name not like 'S%' ;
select * from Product where  prd_name not like 'n%';
select * from Product where  prd_name not like '%h' ;
select * from Product where prd_name not like 'h%';

select * from Product where prd_name not like 'A%h' ;
select * from Product where prd_name not like 'S%' ;
select * from Product where  prd_name not like 'n%';
select * from Product where  prd_name not like '%h' ;
select * from Product where prd_name not like 'h%';

select * from employee where emp_name not like 'A%h' ;
select * from employee where emp_name not like 'S%' ;
select * from employee where  emp_name not like 'n%';
select * from employee where  emp_name not like '%h' ;
select * from employee where emp_name not like 'h%';

select * from employee where emp_name  like 'A%h' ;
select * from employee where emp_name  like 'S%' ;
select * from employee where  emp_name  like 'n%';
select * from employee where  emp_name  like '%h' ;
select * from employee where emp_name  like 'h%';
