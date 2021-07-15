CREATE TABLE Manufacturers(
    code INT NOT NULL AUTO_INCREMENT,
    Name TEXT(500),
    PRIMARY KEY ( Code)  
);
 

CREATE Table Products(
    code INT NOT NULL AUTO_INCREMENT ,
    name TEXT(500) ,
    price FLOAT ,
    manufacturer INT NOT NULL ,
    PRIMARY KEY ( code ),
    CONSTRAINT fk_product_manufacturer 
    FOREIGN KEY ( manufacturer )
    REFERENCES manufacturers ( code )
);

INSERT INTO manufacturers(Code,name) VALUES(1, 'SONY');
INSERT INTO manufacturers(Code,name) VALUES(2, 'Creative Labs');
INSERT INTO manufacturers(Code,name) VALUES(3, 'Hewlett-Packard');
INSERT INTO manufacturers(Code,name) VALUES(4, 'Iomega');
INSERT INTO manufacturers(Code,name) VALUES(5, 'Fujitsu');
INSERT INTO manufacturers(Code,name) VALUES(6, 'Winchester');

INSERT INTO products(code,name,price,manufacturer) VALUES (1,'Hard drive',240,5);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(2,'Memory',120,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(3,'ZIP drive',150,4);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(4,'Floppy disk',5,6);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(5,'Monitor',240,1);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(6,'DVD drive',180,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(7,'CD drive',90,2);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(8,'Printer',270,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(9,'Toner cartridge',66,3);
INSERT INTO Products(Code,Name,Price,Manufacturer) VALUES(10,'DVD burner',180,2);

