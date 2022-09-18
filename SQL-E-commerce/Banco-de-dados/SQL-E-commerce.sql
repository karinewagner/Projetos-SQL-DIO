-- Criação do banco de dados para o cenário de E-commerce
-- drop database ecommerce;
create database ecommerce;
use ecommerce;

-- criar tabela cliente OK
create table clients(
	idClient int auto_increment not null,
    Fname varchar(10),
    Minit char(3),
    Lname varchar(20),
    CPF char(11) not null,
    Address varchar(30),
    primary key(idClient),
    constraint unique_cpf_client unique (CPF)
    );
    
alter table clients auto_increment=1;

desc clients;    

-- criar tabela pedido OK
create table orders(
	idOrder int auto_increment,
    idOrderClient int,
    OrderStatus enum('Processando', 'Em andamento', 'Enviado', 'Entregue','Cancelado') default 'Processando',
    OrderDescription varchar(255),
    SendValue float default 10,
    PaymentCash bool default false,
    primary key(idOrder),
    constraint fk_orders_client foreign key (idOrderClient) references clients(idClient)
    );
    
alter table orders auto_increment=1;
    
desc orders;

-- criar tabela produto OK
create table product(
	idProduct int auto_increment,
    Pname varchar(10) not null,
    Classification_kids bool default false,
	Category enum('Eletrônico','Vestimenta','Brinquedo','Alimentos','Móveis') not null,
    Evaluation float default 0,
    Size varchar(10),
	Price float,
    primary key(idProduct)
    ); 
    
alter table product auto_increment=1;
    
-- criar tabela pagamento OK - FALTA Executar
create table payments(
	idClient int,
    idPayment int,
    TypePayment enum('Boleto','Cartão','Dois Cartões','PIX'),
    LimitAvalilable float,
    primary key(idClient, idPayment)
    );
    
-- criar tabela estoque OK
create table productStorage(
	idProdStorage int auto_increment,
    Location varchar(255),
    Quantity int default 0,
    primary key(idProdStorage)
    );
    
alter table productStorage auto_increment=1;

-- criar tabela fornecedor OK
create table supplier(
	idSupplier int auto_increment,
    SocialName varchar(45) not null,
    CNPJ char(15) not null,
    Address varchar(30),
    Contact varchar(12) not null,
    primary key(idSupplier),
    constraint unique_supplier unique (CNPJ)
    );
    
alter table supplier auto_increment=1;
    
desc supplier;

-- criar tabela vendedor OK
create table seller(
	idSeller int auto_increment,
    SocialName varchar(45) not null,
    CNPJ char(15),
    CPF char(9),
    Address varchar(30),
    Contact varchar(12) not null,
    primary key(idSeller),
    constraint unique_cnpj_seller unique (CNPJ),
    constraint unique_cpf_seller unique (CPF)
    );
    
alter table seller auto_increment=1;
    
desc seller;

-- Criação das Tabelas Relacionais
-- Produto / Vendedor OK
create table productSeller(
	idProdSeller int,
    idPSProduct int,
    ProdQuantity int default 1,
    primary key (idProdSeller,idPSProduct),
    constraint fk_product_seller foreign key (idProdSeller) references seller(idSeller),
    constraint fk_product_product foreign key (idPSProduct) references product(idProduct)
    );
desc productSeller;

-- Produto / Fornecedor OK
create table productSupplier(
	idProdSupplier int,
    idPSProduct int,
    ProdQuantity int not null,
    primary key (idProdSupplier,idPSProduct),
    constraint fk_product_supplier foreign key (idProdSupplier) references supplier(idSupplier),
    constraint fk_product_supplier_product foreign key (idPSProduct) references product(idProduct)
    );
desc productSeller;

-- Produto / Pedido OK
create table productOrder(
	idProdOrder int,
    idPOProduct int,
    ProdQuantity int default 1,
    ProdStatus enum('Disponível','Sem estoque') default 'Disponível', -- relacionado ao pedido
    primary key (idProdOrder,idPOProduct),
    constraint fk_product_order foreign key (idProdOrder) references orders(idOrder),
    constraint fk_product_order_product foreign key (idPOProduct) references product(idProduct)
    );
desc productOrder;

-- Produto / Estoque OK
create table productStorageLocation(
	idPSLocation int,
    idPSLProduct int,
	Location varchar(255) not null,
    primary key (idPSLocation,idPSLProduct),
    constraint fk_product_location_storage foreign key (idPSLocation) references productStorage(idProdStorage),
    constraint fk_product_location_storage_product foreign key (idPSLProduct) references product(idProduct)
    );
desc productStorageLocation;

-- Pedido / Pagamento

--  show tables;

-- para localização das foreign key
-- show databases;
--  use information_schema;
--  desc referential_constraints;
--  select * from referential_constraints where constraint_schema = 'ecommerce';






