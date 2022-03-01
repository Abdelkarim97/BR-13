CREATE DATABASE Commercial_Store_Manager;
USE Commercial_Store_Manager;
CREATE table Client (
    clientId char(4) PRIMARY KEY,
    firstName char(15),
    lastName char(15),
    adress varchar(30),
    telNum varchar(15),
    email varchar(20),
    pword varchar (20)
);
CREATE table Product (
    productId char (4) PRIMARY KEY,
    productName char(20),
    productDesc char (50),
    unitPrice decimal(4.2),
    quantity int (4)
);
CREATE table Order_ (
    orderId char(5) PRIMARY KEY,
    orderDate date,
    deliveryAdr varchar(30),
    clientId char(4),FOREIGN KEY(clientId) REFERENCES client (clientId)
);
CREATE table Order_Details(
    orderId char(5), FOREIGN KEY REFERENCES Order (orderId),
    productId char(4), FOREIGN KEY REFERENCES Product (productId),
    quantityComm int (4), PRIMARY KEY (orderId,productId)
);