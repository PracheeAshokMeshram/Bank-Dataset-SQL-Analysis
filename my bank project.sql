create database mybankdb;
use  mybankdb;
select * from customer;
select * from accounts;
select * from transactions;
select * from loans;
select * from creditcards;
select * from branches;
select * from atms;

# aggrigate queries
# calculate total no of customer
select count(*) as totalcustomers from customer;
select count(*) as totalaccounts from accounts;
select sum(amount) as totalloansamount from loans;
select sum(creditlimit) as totalcreditlimit from creditcards;
select * from accounts where status = 'Active';
select * from transactions where transactiondate > '2023-01-15';
select * from loans where interestrate > 5.0;
select * from creditcards where balance > creditlimit;
select c.customerID, c.name,c.age,a.accountnumber,a.accounttype,a.balance from customer c join accounts a on c.customerID =a.customerID;
select t.transactionID,t.transactiondate, t.amount,t.amount,t.Type, t.description,a.accountnumber,a.accounttype, c.name as customername 
from transactions t
join accounts a on t.accountnumber = a.accountnumber
join customer c on a.customerID = c.customerID;

# top 10 customer with highest loan amt
select c.name,l.amount as loanamount from customer c
join loans l on c.customerID = l.customerID order by l.amount desc limit 10;
 
 #delete inactive account
 set sql_safe_updates=0;
 delete from Accounts where status = 'inactive';
 
 #find customer with multiple acc
 select c.customerID, c.name,count(a.accountnumber) as numAccount from customer c 
 join accounts a  on c.customerID = a.customerID
 group by c.customerID , c.Name having count(a.accountnumber) > 1;
 
 # print first 3 characters of name from customer table
 select substring(name,1,3) as firstThreeCharactersOfName from customer;
 
 # print name from customer tabke into two columns firstname & last name
 Select
 substring_index(Name,' ',1) as firstname,
 substring_index(Name,' ',-1) as lastname from customer;
 
 # sql query to show only odd rows from customer table
 select * from customer
 where MOD(customerID, 2)<>0;
 
 #sql query to determine the 5th highest loan amt without using limit
 select distinct amount
 from loans L1 
 where 5=(
 select count(distinct amount) from loans L2 where L2.Amount >=L1.Amount);
 
 # sql query to show the 2nd highest laon table usng sub_query
 select MAX(amount) as secondhighestloan 
 from loans
 where amount < (
 select max(amount) 
 from loans
 );
 
 # sql query to list customerID whose account is inactive
 select customerID 
 from accounts
 where status = 'Inactive';
 
 # sql query to fentch the 1st row of the customerv table 
 select * from customer limit 1;
 
 # using now function  sql query to show the currentg date & time 
 select now() as currentdatetime;
 
 # 30/8/25
 #sql query to create new table which consist data & structure copied from customers
 create table customerClone like customer;
 insert into customerClone select * from customer;
 # to calculate how many dasys are remaining for customer to pay off the loans
 select customerID,datediff(enddate, curdate()) as daysremaining from loans where enddate>curdate();
 # query to find latest transaction date for each account
 select accountnumber, max(transactiondate) as latesttransactiondate from transactions group by accountnumber;
 select avg(age) as averageage from customer;
 
 # find account with less than minimun amt for account opened before 1st Jan 2022
 select accountnumber, balance from accounts where balance <25000 and opendate <= '2022-01-01';
 
 # find loans that are currently active
 select * from loans where enddate >= curdate() and status ='Active';
 
 # find total amount of transactions for specific month
 select accountnumber, sum(amount) as totalamount from transactions
 where month(transactiondate) = 6
 and year (transactiondate) = 2023
 group by accountnumber;
 
 # find avg credit card blance for each cutomer
 select customerID, avg (balance) as averagecreditcardbalance from creditcards group by customerID;
 
 # find no of inactive atms per location
 select location, count(*) as numberofinactiveatms
 from atms
 where status = 'out of service' group by location;
 
 ##categorise customers into three age group
 select name,age,
 case
 when age < 30 then "Below 30"
 when age between 30 and 60 then "30 to 60" 
 else "Above 60" 
 end as age_group
 from customer;
 
 
 
