use mechanicalWorkshop;
show tables;

insert into Clients (CompleteName, CPF, Address, Contact)
		values('Maria da Silva', 98345631, 'rua silva de prata 29, Carangola - Cidade das flores', 11988665231),
			('Ricardo Soares', 65346789, 'avenida alamenda de prata 1009, Centro - Paulista', 11963258741),
			('Isabela Cruz', 45346789, 'rua manuel bronze 28, Franca - Cidade Sul', 11987544221),
            ('Matheus Pimentel', 12346789, 'avenida A 19, Centro - Indianópolis', 11987563562);
select * from Clients;

insert into Vehicles (idVehicleClient, VehicleDesc)
		values(1, 'Ford-K 2 protas branco'),
			(2, 'S-10 2 portas prata'),
            (3, 'Gol 4 portas vermelho'),
            (4, 'Uno 2 portas branco'),
            (4, 'HB-20 4 portas preto');
select * from Vehicles;

insert into MechanicsTeam (MechanicsNumber)
		values (3),
			(5),
            (2),
            (3);
select * from MechanicsTeam;

insert into mechanical(idMTeamMechanical, CompleteName, Specialty, Address, Contact)
		values(1, 'Marcos Miranda', 'Eletrica', 'rua silva de prata 29, Carangola - Cidade das flores', '11-996322365'),
			(1, 'Ricardo Jose', 'Mecanização', 'rua soares de prata 289, Centro - Cidade pratiada', '11-996321115'),
            (1, 'Roberto Miranda', 'Serviços gerais', 'avenida alamenda de prata 1009, Centro - Cidade das flores', '11-999876365'),
            (3, 'Julio França', 'Eletrica', 'rua josefina de prata 861, Josenopoles - Cidade das flores', '11-998672365'),
			(3, 'Ronaldo Assis', 'Mecanização', 'avenida A de prata 19, Centro - Cidade nebulosa', '11-985466523'),
            (4, 'João Silva', 'Serviços gerais', 'rua silva de bronze 28, Franca - Cidade das flores', '11-987544236'),
            (4, 'Matheus Pimentel', 'Eletrica', 'rua Norte - Floripinas','11-945693215'),
            (4, 'Gabriel Soares', 'Mecanização', 'av josefina 6861, Josenopoles','11-996532147');
select * from mechanical;

insert into serviceOrders (idSOrderVehicle, idSOrdersMecanicsTeam, IsseuDate, TotalPrice, ServicesStatus, ConclusionDate)
		values(1, 1, '2022-09-15', 250, 'Concluído', '2022-09-18'),
 			(2, 2, '2022-09-16', 350, 'Em andamento', '2022-09-20'),
            (3, 3, '2022-09-17', 100, 'Concluído', '2022-09-19'),
			(4, 3, '2022-09-18', 500, 'Cancelado', '2022-09-28'),
			(5, 4, '2022-09-19', 275, 'Recebido', '2022-09-22');

select * from serviceOrders;

insert into services(Quantity, Price, DescService)
		values(1, 150, 'mão de obra'),
			(1, 200, 'mão de obra'),
            (1, 50, 'mão de obra'),
            (1, 200, 'mão de obra'),
            (1, 150, 'mão de obra');

insert into product(Quantity, Price, DescProduct)
		values(2, 100, 'pneus'),
			(3, 150, 'amortecedores'),
            (1, 50, 'valvula'),
            (5, 300, '2 pneus e 3 amortecedores'),
            (2, 125, 'valvulas');
            




