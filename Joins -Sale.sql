USE Sale;

----------img3--------
--select s.[Name] Salesman_Name, c.Cust_Name, c.City, s.Commission from Salesman s
--inner join Customer c on s.salesman_Id=c.Salesman_Id
----------img3 END--------

----------img4--------
--select s.[Name] Salesman_Name, c.Cust_Name, c.City, s.Commission from Salesman s
--inner join Customer c on s.salesman_Id=c.Salesman_Id where Commission>0.12;
----------img4 END--------

----------img5 --------
--select s.[Name] Salesman_Name, c.Cust_Name, c.City c_sity, s.City s_city, s.Commission from Salesman s
--inner join Customer c on s.salesman_Id=c.Salesman_Id where Commission>0.12 and s.City<>c.City
----------img5 END--------

----------img6 --------
--CREATE TABLE Orders(
--	Ord_No int primary key identity(1,1),
--	Purch_Amt float not null,
--	Ord_Date date not null,
--	Customer_ID int foreign key references Customer(Customer_Id),
--	Salesman_ID int foreign key references Salesman(salesman_id)
--); 

--INSERT INTO Orders(Purch_Amt, Ord_Date, Customer_ID, Salesman_ID)
--VALUES(150.5, '2012-10-05', 5, 5002),
--      (270.65, '2012-09-10', 1, 5005),
--      (65.26, '2012-09-10', 1, 5005),
--	  (110.5, '2012-10-05', 2, 5001),
--	  (948.5, '2012-09-10', 7, 5003),
--	  (2400.6, '2012-07-27', 5, 5002),
--	  (5760, '2012-09-10', 2, 5001),
--	  (1983.43, '2012-10-10', 4, 5006),
--	  (2480.4, '2012-10-10', 7, 5003),
--	  (250.45, '2012-06-27', 6, 5004),
--	  (75.29, '2012-08-17', 3, 5006),
--	  (3045.6, '2012-04-25', 2, 5001);



select  o.Purch_Amt, c.Cust_Name, c.City c_City, c.Grade c_Grade,  s.[Name] s_Name, s.City s_City from Orders o
inner join Customer c on o.Salesman_ID=c.Salesman_Id 
inner join Salesman s on o.Salesman_ID=s.salesman_Id 




----------img6 END --------

--select * from Customer;
--select * from Salesman;
--select * from Orders;
