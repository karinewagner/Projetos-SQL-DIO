-- Criação do banco de dados para o cenário de Mechanical-Workshop
-- drop database mechanicalWorkshop;

create database mechanicalWorkshop;
use mechanicalWorkshop;

create table clients(
	idClient int auto_increment not null,
    CompleteName varchar(45),
    CPF char(11) not null,
    Address varchar(100),
    Contact varchar(12),
    primary key(idClient),
    constraint unique_cpf_client unique (CPF)
    );
    
alter table clients auto_increment=1;
desc clients;  

create table vehicles(
	idVehicle int auto_increment not null,
    idVehicleClient int not null,
    VehicleDesc varchar(255),
	primary key(idVehicle),
    constraint fk_vehicle_client foreign key (idVehicleClient) references clients(idClient)
    );
    
alter table vehicles auto_increment=1;

create table mechanicsTeam(
	idMechanicsTeam int auto_increment not null,
    MechanicsNumber int,
    primary key(idMechanicsTeam)
    );
    
create table mechanical(
	idMechanical int auto_increment not null,
    idMTeamMechanical int not null,
    CompleteName varchar(100),
    Specialty varchar(45),
	Address varchar(100),
    Contact varchar(12),
	primary key(idMechanical),
	constraint fk_Mechanical_Mechanics_Team foreign key (idMTeamMechanical) references mechanicsTeam(idMechanicsTeam)   
    );
    
create table serviceOrders(
	idServiceOrder int auto_increment not null,
    idSOrderVehicle int not null,
    idSOrdersMecanicsTeam int not null,
    IsseuDate date,
    TotalPrice float,
    ServicesStatus enum('Recebido', 'Em andamento', 'Concluído', 'Cancelado') default 'Recebido',
    ConclusionDate date,
    primary key(idServiceOrder),
    constraint fk_SOrder_Vehicle foreign key (idSOrderVehicle) references vehicles(idVehicle),
    constraint fk_SOrder_MecanicsTeam foreign key (idSOrdersMecanicsTeam) references mechanicsTeam(idMechanicsTeam)
    );
desc serviceOrders;  

create table services(
	idService int auto_increment not null,
    Quantity int,
    Price float,
    DescService varchar(255),
    primary key(idService)
    );
desc services; 

create table servicesRequest(
	idServReqServOrder int,
    idServReqService int,
    primary key(idServReqServOrder, idServReqService),
    constraint fk_serviceReq_servOrders foreign key (idServReqServOrder) references serviceOrders(idServiceOrder),
    constraint fk_serviceReq_services foreign key (idServReqService) references services(idService)
    );

create table product(
	idProduct int auto_increment not null,
	Quantity int,
    Price float,
    DescProduct varchar(255),
    primary key(idProduct)
    );
desc product; 

create table productRequest(
	idProdReqServOrder int,
    idProdReqproduct int,
    primary key(idProdReqServOrder, idProdReqproduct),
    constraint fk_productReq_servOrders foreign key (idProdReqServOrder) references serviceOrders(idServiceOrder),
    constraint fk_productReq_products foreign key (idProdReqproduct) references product(idProduct)
    
    );













