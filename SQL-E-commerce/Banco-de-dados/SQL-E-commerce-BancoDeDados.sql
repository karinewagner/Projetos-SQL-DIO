use ecommerce;

show tables;

insert into Clients (Fname, Minit, Lname, CPF, Address)
		values('Maria', 'M', 'Silva', 12346789, 'rua silva de prata 29, Carangola - Cidade das flores'),
			('Matheus', 'O', 'Pimentel', 983467321, 'rua soares de prata 289, Centro - Cidade das flores'),
            ('Ricardo', 'F', 'Silva', 45346789, 'avenida alamenda de prata 1009, Centro - Cidade das flores'),
            ('Julia', 'S', 'França', 78346789, 'rua josefina de prata 861, Josenopoles - Cidade das flores'),
			('Roberta', 'G', 'Assis', 98345631, 'avenida A de prata 19, Centro - Cidade das flores'),
            ('Isabela', 'M', 'Cruz', 65346789, 'rua silva de bronze 28, Franca - Cidade das flores');

select * from Clients;

insert into product (Pname, Classification_kids, Category, Evaluation, Size, Price)
		values('Fone', false, 'Eletrônico', '4', null, 50),
			('Barbie', false, 'Brinquedo', '3', null, 30),
            ('Body', false, 'Vestimenta', '5', null, 20),
            ('Microfone', false, 'Eletrônico', '4', null, 35),
            ('Sofá', false, 'Móveis', '3', null, 899),
            ('Farinha', false, 'Alimentos', '2', null, 12),
            ('Fire Stick', false, 'Eletrônico', '3', null, 1500);

insert into orders (idOrderClient, OrderStatus, OrderDescription, SendValue, PaymentCash)
		values(1, null, 'compra via aplicativo', null, 1),
			(2, null, 'compra via aplicativo', 50, 0),
            (3, null, 'confirmado', null, 1),
            (4, null, 'compra via web site', 150, 0);

select * from orders;
select * from product;
insert into productOrder (idProdOrder, idPOProduct, ProdQuantity, ProdStatus)
		values(1, 22, 2, null),
			(1, 23, 3, null),
            (1, 24, 5, null);

insert into productStorage (Location, Quantity)
		values('Rio de Janeiro', 1000),
			('Rio de Janeiro', 500),
            ('São Paulo', 10),
            ('São Paulo', 100),
            ('São Paulo', 10),
            ('Brasilia', 60);

select * from productStorage;
select * from product;
insert into productStorageLocation (idPSLocation, idPSLProduct, Location)
		values(1, 22, 'RJ'),
			(2, 23, 'SP'),
            (3, 25, 'SP'),
            (4, 26, 'MG'),
            (5, 27, 'MT'),
            (6, 28, 'GO');

insert into supplier (SocialName, CNPJ, Address, Contact)
		values('Almeida e filhos', 46987612000151, 'Rua josepi, Centro Sul', '11-985466523'),
			('Eletronica Silva', 543216979000132, 'Rua josefina, Centro','11-987544236'),
            ('Eletronica Valma', 123465278000146, 'Rua margareti, Norte','11-986533215');

select * from supplier;
select * from product;
insert into productSupplier (idProdSupplier, idPSProduct, ProdQuantity)
		values(1, 25, 6),
			(3, 22, 3),
            (2, 26, 4);

insert into seller (SocialName, CNPJ, CPF, Address, Contact)
		values('Ricardo Movei', 545616979000132, null, 'rua Norte - Floripinas','11-945693215'),
			('Maria João Silva', null, 123659654, 'rua josefina, - São Paulo','11-996322365'),
            ('Julia Eletronicos em geral', 789216979000132, null, 'av josefina 6861, Josenopoles','11-996532147'),
            ('Maria Mariana Miranda', null, 546321549, 'rua margareti 10, São Paulo','11-996322365'),
			('Roberta e Miranda cia', 987616979000132, null, 'rua ABC 1920, Josenopoles','11-996322365');

select * from seller;
select * from product;
insert into productSeller (idProdSeller, idPSProduct, ProdQuantity)
		values(21, 22, 10),
			(23, 25, 15),
            (24, 26, 5);
            

		