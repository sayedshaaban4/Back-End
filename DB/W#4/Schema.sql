-- Department table
create table department
(
    ID int primary key,
    d_name varchar(30)
);

-- Employees table
create table employees
(
    ID int primary key,
    email varchar(30),
    e_name varchar(30),
    salary int,
    foreign key (departmentID) references department (ID) on delete cascade 
);

-- Admins table
create table admins
(
    ID int primary key,
    email varchar(30),
    a_password varchar(30),
    foreign key (employeeID) references employee (ID) on delete cascade
);


-- Customer table
create table customer
(
    ID int primary key,
    full_name varchar(60),
    c_address varchar(60),
    phone varchar(60),
    age varchar(3),
    gender varchar(6),
    c_password varchar(20) 
);

-- Products table
create table products
(
    ID int primary key,
    p_name varchar(50),
    category varchar(30),
    price int
);

-- Orders table
create table orders
(
    ID int primary key,
    o_date date,
    amount int,
    foreign key (customerID) references customer (ID) on delete cascade,
    foreign key (productID) references products (ID) on delete cascade
);
