Create Database JigitalclouN
Use JigitalclouN

Create Table MsStaff(
StaffID Varchar(10) Primary Key Check (StaffID like 'JCN-S[3-7][1-2][0-9][0-9]') Not Null,
StaffName Varchar(255) Not Null,
StaffGender Varchar(255) Not Null,
StaffEmail Varchar(255) Check (StaffEmail Like '%@%.%') Not Null,
StaffDateOfBirth Date Not Null,
StaffPhoneNumber Char(15) Not Null,
StaffAddress Varchar(255) Not Null,
StaffSalary Int Check (StaffSalary >= 3500000 and StaffSalary <= 20000000 ) Not Null
)
Insert Into MsStaff Values
('JCN-S3101', 'Julian Andersen', 'Male', 'julianandersen@gmail.com', '1988-12-04', '081577139087', 'Jl Medan Raya', 5000000),
('JCN-S3202', 'Robert Gunawan', 'Male', 'robert.gunawan@gmail.com', '1990-01-29', '081377773959', 'Jl Mangga Kecil', 8500000),
('JCN-S4103', 'Sinta Permatasari', 'Female', 'sintapermatasari99@gmail.com', '1998-01-05', '085833759880', 'Taman Palem Raya', 9750000),
('JCN-S4204', 'Rafael Agustinus', 'Male', 'rafael.agustinus@gmail.com', '1978-04-05', '081288459236', 'Jl Salak 7', 5400000),
('JCN-S5105', 'Jilian Agustine', 'Female', 'agustinejilian@gmail.com', '1986-10-11', '081754227386', 'Taman Kedoya Baru', 10000000),
('JCN-S5206', 'Agnes Cristabelle', 'Female', 'cristabelle.a@gmail.com', '1999-11-29', '081377358989', 'Komplek Green Garden', 7800000),
('JCN-S6107', 'Yola Anastasia', 'Female', 'yola.anastasia01@gmail.com', '1978-06-15', '081578389645', 'Taman Villa Meruya', 8900000),
('JCN-S6208', 'Michael Robertus', 'Male', 'robertusmichael@gmail.com', '1972-09-11', '081277369657', 'Perumahan Mutiara Permai', 18500000),
('JCN-S7109', 'Anastasia Yuliana', 'Female', 'yulianaanas@gmail.com', '1991-08-19', '081577369742', 'Jl Metro Permata 1', 12600000),
('JCN-S7210', 'Yohan Santoso', 'Male', 'yohansantoso@gmal.com', '1981-04-22', '081377569237', 'Jl Permata Buana 1', 15450000)


Create Table MsMemory(
MemoryID Varchar(10) Primary Key Check (MemoryID like 'JCN-M[3-7][1-2][0-9][0-9]') Not Null,
MemoryFullProductName Varchar(255) Not Null,
MemoryModelCode Char(10) Not Null,
MemoryPrice Char(25) Not Null,
[MemoryFrequency(MHz)] Int Check ([MemoryFrequency(MHz)] >= 1000 and [MemoryFrequency(MHz)] <= 5000) Not Null,
[MemoryCapacity(GB)] Int Check ([MemoryCapacity(GB)] >= 1 and [MemoryCapacity(GB)] <= 256) Not Null
)
Insert Into MsMemory Values
('JCN-M3101', 'Corsair Vengeance', 2, 980000, 3400, 64),
('JCN-M3102', 'Corsair Dominator', 61, 3650000, 2000, 128),
('JCN-M3103', 'Kingston HyperX', 14, 480000, 1200, 32),
('JCN-M3104', 'V-Gen Platinum', 25, 410000, 1190, 16),
('JCN-M3105', 'V-Gen Rescue', 17, 360000, 1060, 16),
('JCN-M3106', 'G.Skill TridentZ', 45, 4560000, 4100, 256),
('JCN-M3107', 'G.Skill Ripjaws', 13, 1730000, 1200, 64),
('JCN-M3108', 'Adata Spectrix', 22, 2180000, 3000, 32),
('JCN-M3109', 'Team Elite', 76, 1790000, 4090, 128),
('JCN-M3110', 'RAM Crucial Ballistix', 12, 890000, 2650, 256),
('JCN-M3201', 'Patriot Viper Elite', 90, 1250000, 3450, 128),
('JCN-M3202', 'Patriot Viper Blackout', 99, 750000, 2000, 64)


Create Table MsProcessor(
ProcessorID Varchar(10) Primary Key Check (ProcessorID like 'JCN-P[3-7][1-2][0-9][0-9]') Not Null,
ProcessorFullProductName Varchar(255) Not Null,
ProcessorModelCode Char(10) Not Null,
ProcessorPrice Char(25) Not Null,
[ProcessorClockSpeed(MHz)] Int Check ([ProcessorClockSpeed(MHz)] >= 1500 and [ProcessorClockSpeed(MHz)] <= 6000) Not Null,
ProcessorTheNumberOfCores Int Check (ProcessorTheNumberOfCores >= 1 and ProcessorTheNumberOfCores <= 24) Not Null
)
Insert Into MsProcessor Values
('JCN-P4101', 'AMD A10-5800K', 50, 960000, 3800, 4),
('JCN-P4102', 'AMD FX-9590', 42, 1200000, 4700, 8),
('JCN-P4103', 'Intel Core i3-6100', 97, 1350000, 3700, 2),
('JCN-P4104', 'AMD Sempron 3850', 11, 496000, 1600, 2),
('JCN-P4105', 'Intel Pentium G3258', 27, 980000, 3200, 4),
('JCN-P4106', 'Intel Core i7-6700K', 67, 2340000, 4000, 8),
('JCN-P4107', 'Intel Core i5-4690K', 44, 1970000, 3500, 6),
('JCN-P4108', 'AMD FX-8320E', 19, 1455000, 3500, 8),
('JCN-P4109', 'Intel Core i7-5820K', 29, 4690000, 3300, 10),
('JCN-P4110', 'AMD A10-7870K', 37, 3760000, 3900, 4)


Create Table MsLocation(
LocationID Varchar(10) Primary Key Check (LocationID like 'JCN-L[3-7][1-2][0-9][0-9]') Not Null,
LocationCity Varchar(255) Not Null,
LocationCountry Varchar(255) Not Null,
LocationZipCode Char(25) Not Null,
LocationLatitude Int Check (LocationLatitude >= -90 and LocationLatitude <= 90) Not Null,
LocationLongitude Int Check (LocationLongitude >= -180 and LocationLongitude <= 180) Not Null,
)
Insert Into MsLocation Values
('JCN-L5101', 'Jakarta', 'Indonesia', 10110, 6.2088, 106.84),
('JCN-L5102', 'Surabaya', 'Indonesia', 60116, -7.2575, 112.75),
('JCN-L5103', 'Semarang', 'Indonesia', 50111, -7.0051, 110.43),
('JCN-L5104', 'Bandung', 'Indonesia', 40114, 6.9175, 107.61),
('JCN-L5105', 'Palembang', 'Indonesia', 30118, -2.990, 104.75),
('JCN-L5106', 'Denpasar', 'Indonesia', 80115, 8.6705, 115.21),
('JCN-L5107', 'Samarinda', 'Indonesia', 75118, 0.5016, 117.12),
('JCN-L5108', 'Pekanbaru', 'Indonesia', 28115, 0.5071, 101.44),
('JCN-L5109', 'Padang', ' Indonesia', 25111, 0.9471, 100.41),
('JCN-L5110', 'Makassar', 'Indonesia', 90114, -5.161, 119.43),
('JCN-L5111', 'Yogyakarta', 'Indonesia', 55000, -7.795, 110.36),
('JCN-L5112', 'Medan', 'Indonesia', 20111, 3.5952, 98.67)


Create Table MsServer(
ServerID Varchar(10) Primary Key Check (ServerID like 'JCN-V[3-7][1-2][0-9][0-9]') Not Null,
MemoryID Varchar(10) Check (MemoryID like 'JCN-M[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (MemoryID) References MsMemory (MemoryID),
ProcessorID Varchar(10) Check (ProcessorID like 'JCN-P[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (ProcessorID) References MsProcessor (ProcessorID),
LocationID Varchar(10) Check (LocationID like 'JCN-L[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (LocationID) References MsLocation (LocationID),
ServerPrice Int Not Null
)
Insert Into MsServer Values
('JCN-V6101', 'JCN-M3101', 'JCN-P4101', 'JCN-L5101', 670000),
('JCN-V6102', 'JCN-M3102', 'JCN-P4102', 'JCN-L5102', 890000),
('JCN-V6103', 'JCN-M3103', 'JCN-P4103', 'JCN-L5103', 900000),
('JCN-V6104', 'JCN-M3104', 'JCN-P4104', 'JCN-L5104', 2400000),
('JCN-V6105', 'JCN-M3105', 'JCN-P4105', 'JCN-L5105', 990000),
('JCN-V6106', 'JCN-M3106', 'JCN-P4106', 'JCN-L5106', 1600000),
('JCN-V6107', 'JCN-M3107', 'JCN-P4107', 'JCN-L5107', 1750000),
('JCN-V6108', 'JCN-M3108', 'JCN-P4108', 'JCN-L5108', 2200000),
('JCN-V6109', 'JCN-M3109', 'JCN-P4109', 'JCN-L5109', 780000),
('JCN-V6110', 'JCN-M3110', 'JCN-P4109', 'JCN-L5110', 1450000),
('JCN-V6111', 'JCN-M3201', 'JCN-P4110', 'JCN-L5111', 780000),
('JCN-V6112', 'JCN-M3202', 'JCN-P4110', 'JCN-L5112', 870000)


Create Table MsCustomer(
CustomerID Varchar(10) Primary Key Check (CustomerID like 'JCN-C[3-7][1-2][0-9][0-9]') Not Null,
CustomerName Varchar(255) Not Null,
CustomerGender Varchar(255) Check (CustomerGender in ('Male', 'Female')) Not Null,
CustomerEmail Varchar(255) Not Null,
CustomerDOB Date Check (Datediff(Year, 2023, CustomerDOB) >= 15) Not Null,
CustomerPhoneNumber Char(15) Not Null,
CustomerAddress Varchar(255) Not Null
)
Insert Into MsCustomer Values
('JCN-C3101', 'Elleanore Putri', 'Female', 'putrielleanore22@gmail.com', '1999-10-19', '081295637878', 'Jl Kedoya Permai'),
('JCN-C3102', 'Jason Putra', 'Male', 'jasonputra@gmail.com', '1978-12-26', '081567324034', 'Taman Mutiara Baru'),
('JCN-C3103', 'Anderson', 'Male', 'anderson990@gmail.com', '1973-11-29', '081257932590', 'Perumahan Metland Menteng'),
('JCN-C3104', 'Daniel Chandra', 'Male', 'danielchandra@gmail.com', '1990-07-13', '081389538953', 'Perumahan Senayan Residence'),
('JCN-C3105', 'Andrea Cheryl', 'Female', 'andreacheryl77@gmail.com', '1989-12-03', '081384527568', 'Jl Muara Karang'),
('JCN-C3106', 'Leonardo Indra', 'Male', 'indraleonardo@gmail.com', '1978-12-12', '081793562045', 'Jl Akasia Raya'),
('JCN-C3107', 'Galvin Geraldo', 'Male', 'geraldo.galvin@gmail.com', '1987-12-01', '081246034628', 'Jl Pos Pengumben'),
('JCN-C3108', 'Andrew Farell', 'Male', 'farelland@gmail.com', '1988-02-14', '081535286723', 'Jl Kemuning Raya'),
('JCN-C3109', 'Jennifer Odelia', 'Female', 'jennifer.od@gmail.com', '1978-09-10', '081378456245', 'Perumahan Kosambi Baru'),
('JCN-C3110', 'Martinus Alvin', 'Male', 'a.martinus@gmail.com', '1983-07-30', '081376836834', 'Perumahan Cengkareng Indah'),
('JCN-C3201', 'Safira Nayla', 'Female', 'safira.nayl.a@gmail.com', '1990-12-17', '081539584685', 'Jl Kemanggisan Raya'),
('JCN-C3202', 'David Alfian', 'Male','alfiandaviddd@gmail.com', '1997-05-06', '081368934506', 'Perumahan Pantai Mutiara')


Create Table RentalTransactionHeader(
RentalTransactionID Varchar(10) Primary Key Check (RentalTransactionID like 'JCN-R[0-2][1-2][0-9][0-9]') Not Null,
StaffID Varchar(10) Check (StaffID like 'JCN-S[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (StaffID) References MsStaff (StaffID),
CustomerID Varchar(10) Check (CustomerID like 'JCN-C[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (CustomerID) References MsCustomer (CustomerID),
)
Insert Into RentalTransactionHeader Values
('JCN-R0101', 'JCN-S3101', 'JCN-C3101'),
('JCN-R0102', 'JCN-S3101', 'JCN-C3101'),
('JCN-R0103', 'JCN-S3101', 'JCN-C3102'),
('JCN-R0104', 'JCN-S3202', 'JCN-C3102'),
('JCN-R0105', 'JCN-S3202', 'JCN-C3103'),
('JCN-R0106', 'JCN-S4103', 'JCN-C3104'),
('JCN-R0107', 'JCN-S4204', 'JCN-C3104'),
('JCN-R0108', 'JCN-S5105', 'JCN-C3105'),
('JCN-R0109', 'JCN-S5105', 'JCN-C3105'),
('JCN-R0110', 'JCN-S5105', 'JCN-C3106'),
('JCN-R0111', 'JCN-S5206', 'JCN-C3106'),
('JCN-R0112', 'JCN-S5206', 'JCN-C3107'),
('JCN-R0113', 'JCN-S6107', 'JCN-C3108'),
('JCN-R0114', 'JCN-S6107', 'JCN-C3108'),
('JCN-R0115', 'JCN-S6107', 'JCN-C3108'),
('JCN-R0116', 'JCN-S6208', 'JCN-C3109'),
('JCN-R0117', 'JCN-S6208', 'JCN-C3109'),
('JCN-R0118', 'JCN-S7109', 'JCN-C3109'),
('JCN-R0119', 'JCN-S7109', 'JCN-C3110'),
('JCN-R0120', 'JCN-S7109', 'JCN-C3110'),
('JCN-R0121', 'JCN-S7109', 'JCN-C3201'),
('JCN-R0122', 'JCN-S7109', 'JCN-C3201'),
('JCN-R0123', 'JCN-S7210', 'JCN-C3201'),
('JCN-R0124', 'JCN-S7210', 'JCN-C3202'),
('JCN-R0125', 'JCN-S7210', 'JCN-C3202')


Create Table SaleTransactionHeader(
SaleTransactionID Varchar(10) Primary Key Check (SaleTransactionID like 'JCN-S[0-2][1-2][0-9][0-9]') Not Null,
StaffID Varchar(10) Check (StaffID like 'JCN-S[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (StaffID) References MsStaff (StaffID),
CustomerID Varchar(10) Check (CustomerID like 'JCN-C[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (CustomerID) References MsCustomer (CustomerID),
)

Create Table RentalTransactionDetail(
RentalTransactionID Varchar(10) Check (RentalTransactionID like 'JCN-R[0-2][1-2][0-9][0-9]') Not Null
Foreign Key (RentalTransactionID) References RentalTransactionHeader (RentalTransactionID),
ServerID Varchar(10) Check (ServerID like 'JCN-V[3-7][1-2][0-9][0-9]') Not Null,
Foreign Key (ServerID) References MsServer (ServerID),
ServersRented Varchar (255) Not Null,
StartDateRental Date Check (StartDateRental >= '2012-01-01' And StartDateRental <= '2023-06-01') Not Null,
RentalDuration Int Not Null
)


Create Table SaleTransactionDetail(
SaleTransactionID Varchar(10) Check (SaleTransactionID like 'JCN-S[0-2][1-2][0-9][0-9]') Not Null
Foreign Key (SaleTransactionID) References SaleTransactionHeader (SaleTransactionID),
ServersSold Int Not Null,
TransactionDate Date Not Null,
Quantity Int Not Null
)