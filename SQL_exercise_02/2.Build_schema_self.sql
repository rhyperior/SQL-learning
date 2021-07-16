Create table departments (
    code INT NOT NULL AUTO_INCREMENT,
    name TEXT (500),
    budget FLOAT,
    PRIMARY KEY (code)
) ;


Create Table employees (
    ssn INT NOT NULL AUTO_INCREMENT,
    name text (500),
    lastname text (500),
    department INT NOT NULL,
    PRIMARY KEY (ssn),
    constraint fk_employees_dept
    FOREIGN KEY (department)
    REFERENCES departments(code)
) ;

INSERT INTO departments(code, name, budget) values (14, 'IT', 65000) ;
INSERT INTO departments(code, name, budget) values (37, 'Accounting', 15000);
INSERT INTO departments(code, name, budget) values (59, 'Human Resources', 240000);
INSERT INTO departments(code, name, budget) values (77, 'Research', 55000);

insert into employees(ssn, name, lastname, department) VALUES ('123234877','Michael','Rogers',14) ;
insert into employees(ssn, name, lastname, department) VALUES ('152934485','Anand','Manikutty',14) ;
insert into employees(ssn, name, lastname, department) VALUES ('222364883','Carol','Smith',37) ;
insert into employees(ssn, name, lastname, department) VALUES ('326587417','Joe','Stevens',37) ;
insert into employees(ssn, name, lastname, department) VALUES ('332154719','Mary-Anne','Foster',14) ;
insert into employees(ssn, name, lastname, department) VALUES ('332569843','George','ODonnell',77) ;
insert into employees(ssn, name, lastname, department) VALUES ('546523478','John','Doe',59) ;
insert into employees(ssn, name, lastname, department) VALUES ('631231482','David','Smith',77) ;
insert into employees(ssn, name, lastname, department) VALUES ('654873219','Zacary','Efron',59) ;
insert into employees(ssn, name, lastname, department) VALUES ('745685214','Eric','Goldsmith',59) ;
insert into employees(ssn, name, lastname, department) VALUES ('845657245','Elizabeth','Doe',14) ;
insert into employees(ssn, name, lastname, department) VALUES ('845657246','Kumar','Swamy',14) ;