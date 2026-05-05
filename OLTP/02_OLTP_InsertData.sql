USE Northwind_OLTP;
GO

-- ========================
-- WAVE 1: Independent tables
-- ========================

INSERT INTO Region (RegionDescription) VALUES
('Eastern'),
('Western'),
('Northern'),
('Southern');
GO

INSERT INTO Categories (CategoryName, Description) VALUES
('Beverages',       'Soft drinks, coffees, teas, beers, and ales'),
('Condiments',      'Sweet and savory sauces, relishes, spreads, and seasonings'),
('Confections',     'Desserts, candies, and sweet breads'),
('Dairy Products',  'Cheeses'),
('Grains/Cereals',  'Breads, crackers, pasta, and cereal'),
('Meat/Poultry',    'Prepared meats'),
('Produce',         'Dried fruit and bean curd'),
('Seafood',         'Seaweed and fish');
GO

INSERT INTO Suppliers (CompanyName, ContactName, ContactTitle, Address, City, PostalCode, Country, Phone, Fax, HomePage) VALUES
('Exotic Liquids',             'Charlotte Cooper',  'Purchasing Manager', '49 Gilbert St.',          'London',      'EC1 4SD', 'UK',          '(171) 555-2222', NULL,             NULL),
('New Orleans Cajun Delights', 'Shelley Burke',     'Order Administrator','P.O. Box 78934',          'New Orleans', '70117',   'USA',         '(100) 555-4822', NULL,             '#CAJUN.HTM#'),
('Grandma Kelly''s Homestead', 'Regina Murphy',     'Sales Representative','707 Oxford Rd.',         'Ann Arbor',   '48104',   'USA',         '(313) 555-5735', '(313) 555-3349', NULL),
('Tokyo Traders',              'Yoshi Nagase',      'Marketing Manager',  '9-8 Sekimai Musashino-shi','Tokyo',      '100',     'Japan',       '(03) 3555-5011', NULL,             NULL),
('Cooperativa de Quesos',      'Antonio del Valle', 'Export Administrator','Calle del Rosal 4',      'Oviedo',      '33007',   'Spain',       '(98) 598 76 54', NULL,             NULL),
('Mayumi''s',                  'Mayumi Ohno',       'Marketing Representative','92 Setsuko Chuo-ku', 'Osaka',       '545',     'Japan',       '(06) 431-7877',  NULL,             'Mayumi''s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),
('Pavlova Ltd.',               'Ian Devling',       'Marketing Manager',  '74 Rose St. Moonie Ponds','Melbourne',  '3058',    'Australia',   '(03) 444-2343',  '(03) 444-6588',  NULL),
('Specialty Biscuits Ltd.',    'Peter Wilson',      'Sales Representative','29 King''s Way',         'Manchester',  'M14 GSD', 'UK',          '(161) 555-4448', NULL,             NULL),
('PB Knäckebröd AB',          'Lars Peterson',     'Sales Agent',        'Kaloadagatan 13',         'Göteborg',    'S-345 67','Sweden',       '031-987 65 43',  '031-987 65 91',  NULL),
('Refrescos Americanas LTDA',  'Carlos Diaz',       'Marketing Manager',  'Av. das Americanas 12.890','Sao Paulo',  '5442',    'Brazil',      '(11) 555 4640',  NULL,             NULL),
('Heli Süßwaren GmbH',        'Petra Winkler',     'Sales Manager',      'Tiergartenstraße 5',      'Berlin',      '10785',   'Germany',     '(010) 9984510',  NULL,             NULL),
('Plutzer Lebensmittelgroßmärkte','Martin Bein',    'International Marketing Mgr','Bogenallee 51',   'Frankfurt',   '60439',   'Germany',     '(069) 992755',   NULL,             '#Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),
('Nord-Ost-Fisch Handelsgesellschaft','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven', '27478',   'Germany',     '(04721) 8713',   '(04721) 8714',   NULL),
('Formaggi Fortini s.r.l.',   'Elio Rossi',        'Sales Representative','Viale Dante, 75',        'Ravenna',     '48100',   'Italy',       '(0544) 60323',   '(0544) 60603',   '#Formaggi Fortini s.r.l. (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/formaggi.htm#'),
('Norske Meierier',            'Beate Vileid',      'Marketing Manager',  'Hatlevegen 5',            'Sandvika',    '1320',    'Norway',      '(0)2-953010',    NULL,             NULL),
('Bigfoot Breweries',          'Cheryl Saylor',     'Regional Account Rep.','3400 - 8th Avenue Suite 210','Bend',  '97101',   'USA',         '(503) 555-9931', NULL,             NULL),
('Svensk Sjöföda AB',         'Michael Björn',     'Sales Representative','Brovallavägen 231',       'Stockholm',   'S-123 45','Sweden',       '08-123 45 67',   NULL,             NULL),
('Aux joyeux ecclésiastiques', 'Guylène Nodier',   'Sales Manager',      '203, Rue des Francs-Bourgeois','Paris',  '75004',   'France',      '(1) 03.83.00.68','(1) 03.83.00.62',NULL),
('New England Seafood Cannery','Robb Merchant',     'Wholesale Account Agent','Order Processing Dept. 2100 Paul Revere Blvd.','Boston','02134','USA','(617) 555-3267','(617) 555-3389',NULL),
('Leka Trading',               'Chandra Leka',      'Owner',              '471 Serangoon Loop Suite #402','Singapore','0512',  'Singapore',   '555-8787',       NULL,             NULL),
('Lyngbysild',                 'Niels Petersen',    'Sales Manager',      'Lyngbysild Fiskebakken 10','Lyngby',    '2800',    'Denmark',     '43844108',       '43844115',       NULL),
('Zaanse Snoepfabriek',        'Dirk Luchte',       'Accounting Manager', 'Verkoop Rijnweg 22',      'Zaandam',     '9999 ZZ', 'Netherlands', '(12345) 1212',   '(12345) 1210',   NULL),
('Karkki Oy',                  'Anne Heikkonen',    'Product Manager',    'Valtakatu 12',            'Lappeenranta','53120',   'Finland',     '(953) 10956',    NULL,             NULL),
('G''day Mate',                'Wendy Mackenzie',   'Sales Representative','170 Prince Edward Parade Hunter''s Hill','Sydney','2042','Australia','(02) 555-5914','(02) 555-4873','G''day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),
('Ma Maison',                  'Jean-Guy Lauzon',   'Marketing Manager',  '2960 Rue St. Laurent',    'Montréal',    'H1J 1C3', 'Canada',      '(514) 555-9022', NULL,             NULL),
('Pasta Buttini s.r.l.',       'Giovanni Giudici',  'Order Administrator','Via dei Gelsomini, 153',  'Salerno',     '84100',   'Italy',       '(089) 6547665',  '(089) 6547667',  NULL),
('Escargots Nouveaux',         'Marie Delamare',    'Sales Manager',      '22, rue H. Voiron',       'Montceau',    '71300',   'France',      '85.57.00.07',    NULL,             NULL),
('Gai pâturage',               'Eliane Noz',        'Sales Representative','Bat. B 3, rue des Alpes', 'Annecy',     '74000',   'France',      '38.76.98.06',    '38.76.98.58',    NULL),
('Forêts d''Erables',          'Chantal Goulet',    'Accounting Manager', '148 rue Chasseur',        'Ste-Hyacinthe','J2S 7S8','Canada',      '(514) 555-2955', '(514) 555-2921', NULL);
GO

INSERT INTO Shippers (CompanyName, Phone) VALUES
('Speedy Express',  '(503) 555-9831'),
('United Package',  '(503) 555-3199'),
('Federal Shipping','(503) 555-9931');
GO

INSERT INTO Employees (LastName, FirstName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, PostalCode, Country, HomePhone, Extension, Notes, ReportsTo, PhotoPath) VALUES
('Davolio',   'Nancy',   'Sales Representative',      'Ms.', '1968-12-08', '1992-05-01', '507 - 20th Ave. E. Apt. 2A', 'Seattle',     '98122', 'USA', '(206) 555-9857', '5467', 'Education includes a BA in psychology.', 2,    'http://accweb/emmployees/davolio.bmp'),
('Fuller',    'Andrew',  'Vice President Sales',      'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way',         'Tacoma',      '98401', 'USA', '(206) 555-9482', '3457', 'Andrew received his BTS commercial.',    NULL, 'http://accweb/emmployees/fuller.bmp'),
('Leverling', 'Janet',   'Sales Representative',      'Ms.', '1963-08-30', '1992-04-01', '722 Moss Bay Blvd.',         'Kirkland',    '98033', 'USA', '(206) 555-3412', '3355', 'Janet has a BS degree in chemistry.',    2,    'http://accweb/emmployees/leverling.bmp'),
('Peacock',   'Margaret','Sales Representative',      'Mrs.','1937-09-19', '1993-05-03', '4110 Old Redmond Rd.',       'Redmond',     '98052', 'USA', '(206) 555-8122', '5176', 'Margaret holds a BA in English.',        2,    'http://accweb/emmployees/peacock.bmp'),
('Buchanan',  'Steven',  'Sales Manager',             'Mr.', '1955-03-04', '1993-10-17', '14 Garrett Hill',            'London',      'SW1 8JR','UK', '(71) 555-4848',  '3453', 'Steven Buchanan graduated from St. Andrews University.', 2, 'http://accweb/emmployees/buchanan.bmp'),
('Suyama',    'Michael', 'Sales Representative',      'Mr.', '1963-07-02', '1993-10-17', 'Coventry House Miner Rd.',   'London',      'EC2 7JR','UK', '(71) 555-7773',  '428',  'Michael is a graduate of Sussex University.',            5, 'http://accweb/emmployees/suyama.bmp'),
('King',      'Robert',  'Sales Representative',      'Mr.', '1960-05-29', '1994-01-02', 'Edgeham Hollow Winchester Way','London',    'RG1 9SP','UK', '(71) 555-5598',  '465',  'Robert King served in the Peace Corps.',                 5, 'http://accweb/emmployees/king.bmp'),
('Callahan',  'Laura',   'Inside Sales Coordinator',  'Ms.', '1958-01-09', '1994-03-05', '4726 - 11th Ave. N.E.',      'Seattle',     '98105', 'USA', '(206) 555-1189', '2344', 'Laura received a BA in psychology.',     2,    'http://accweb/emmployees/callahan.bmp'),
('Dodsworth', 'Anne',    'Sales Representative',      'Ms.', '1966-01-27', '1994-11-15', '7 Houndstooth Rd.',          'London',      'WG2 7LT','UK', '(71) 555-4444',  '452',  'Anne has a BA degree in English.',       5,    'http://accweb/emmployees/dodsworth.bmp');
GO

-- ========================
-- WAVE 2: Dependent tables
-- ========================

INSERT INTO Territories (TerritoryID, RegionID, TerritoryDescription) VALUES
('01581', 3, 'Westboro'),
('01730', 3, 'Bedford'),
('01833', 3, 'Georgetow'),
('02116', 3, 'Boston'),
('02139', 3, 'Cambridge'),
('02184', 3, 'Braintree'),
('02903', 3, 'Providence'),
('03049', 3, 'Hollis'),
('03801', 3, 'Portsmouth'),
('06897', 3, 'Wilton'),
('07960', 3, 'Morristown'),
('08837', 3, 'Edison'),
('10019', 3, 'New York'),
('10038', 3, 'New York'),
('11747', 3, 'Mellvile'),
('14450', 3, 'Fairport'),
('19428', 4, 'Philadelphia'),
('19713', 4, 'Neward'),
('20852', 4, 'Rockville'),
('27403', 4, 'Greensboro'),
('27511', 4, 'Cary'),
('29202', 4, 'Columbia'),
('30346', 4, 'Atlanta'),
('31406', 4, 'Savannah'),
('32859', 4, 'Orlando'),
('33607', 4, 'Tampa'),
('40222', 1, 'Louisville'),
('44122', 1, 'Beachwood'),
('45839', 1, 'Findlay'),
('48075', 1, 'Southfield'),
('48084', 1, 'Troy'),
('48304', 1, 'Bloomfield Hills'),
('55113', 1, 'Roseville'),
('55439', 1, 'Minneapolis'),
('60179', 1, 'Hoffman Estates'),
('60601', 1, 'Chicago'),
('72716', 2, 'Bentonville'),
('75234', 2, 'Dallas'),
('78759', 2, 'Austin'),
('80202', 2, 'Denver'),
('80909', 2, 'Colorado Springs'),
('85014', 2, 'Phoenix'),
('85251', 2, 'Scottsdale'),
('90405', 2, 'Santa Monica'),
('94025', 2, 'Menlo Park'),
('94105', 2, 'San Francisco'),
('95008', 2, 'Campbell'),
('95054', 2, 'Santa Clara'),
('95060', 2, 'Santa Cruz'),
('98004', 2, 'Bellevue'),
('98052', 2, 'Redmond'),
('98104', 2, 'Seattle'),
('99508', 2, 'Anchorage');
GO

INSERT INTO Products (SupplierID, CategoryID, ProductName, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(1,  1, 'Chai',                        '10 boxes x 20 bags',  18.00,  39,  0,  10, 0),
(1,  1, 'Chang',                       '24 - 12 oz bottles',  19.00,  17,  40, 25, 0),
(1,  2, 'Aniseed Syrup',               '12 - 550 ml bottles', 10.00,  13,  70, 25, 0),
(2,  2, 'Chef Anton''s Cajun Seasoning','48 - 6 oz jars',     22.00,  53,  0,  0,  0),
(2,  2, 'Chef Anton''s Gumbo Mix',     '36 boxes',            21.35,  0,   0,  0,  1),
(3,  2, 'Grandma''s Boysenberry Spread','12 - 8 oz jars',     25.00,  120, 0,  25, 0),
(3,  7, 'Uncle Bob''s Organic Pears',  '12 - 1 lb pkgs.',     30.00,  15,  0,  10, 0),
(3,  2, 'Northwoods Cranberry Sauce',  '12 - 12 oz jars',     40.00,  6,   0,  0,  0),
(4,  6, 'Mishi Kobe Niku',             '18 - 500 g pkgs.',    97.00,  29,  0,  0,  1),
(4,  8, 'Ikura',                       '12 - 200 ml jars',    31.00,  31,  0,  0,  0),
(4,  4, 'Queso Cabrales',              '1 kg pkg.',           21.00,  22,  30, 30, 0),
(5,  4, 'Queso Manchego La Pastora',   '10 - 500 g pkgs.',    38.00,  86,  0,  0,  0),
(6,  8, 'Konbu',                       '2 kg box',            6.00,   24,  0,  5,  0),
(6,  7, 'Tofu',                        '40 - 100 g pkgs.',    23.25,  35,  0,  0,  0),
(6,  2, 'Genen Shouyu',                '24 - 250 ml bottles', 15.50,  39,  0,  5,  0),
(7,  3, 'Pavlova',                     '32 - 500 g boxes',    17.45,  29,  0,  10, 0),
(7,  6, 'Alice Mutton',                '20 - 1 kg tins',      39.00,  0,   0,  0,  1),
(7,  8, 'Carnarvon Tigers',            '16 kg pkg.',          62.50,  42,  0,  0,  0),
(8,  3, 'Teatime Chocolate Biscuits',  '10 boxes x 12 pieces',9.20,   25,  0,  5,  0),
(8,  3, 'Sir Rodney''s Marmalade',     '30 gift boxes',       81.00,  40,  0,  0,  0),
(8,  3, 'Sir Rodney''s Scones',        '24 pkgs. x 4 pieces', 10.00,  3,   40, 5,  0),
(9,  5, 'Gustaf''s Knäckebröd',        '24 - 500 g pkgs.',    21.00,  104, 0,  25, 0),
(9,  5, 'Tunnbröd',                    '12 - 250 g pkgs.',    9.00,   61,  0,  25, 0),
(10, 1, 'Guaraná Fantástica',          '12 - 355 ml cans',    4.50,   20,  0,  0,  1),
(11, 3, 'NuNuCa Nuß-Nougat-Creme',    '20 - 450 g glasses',  14.00,  76,  0,  30, 0),
(11, 3, 'Gumbär Gummibärchen',         '100 - 250 g bags',    31.23,  15,  0,  0,  0),
(11, 3, 'Schoggi Schokolade',          '100 - 100 g pieces',  43.90,  49,  0,  30, 0),
(12, 7, 'Rössle Sauerkraut',           '25 - 825 g cans',     45.60,  26,  0,  0,  1),
(13, 6, 'Thüringer Rostbratwurst',     '50 bags x 30 sausgs.',123.79, 0,   0,  0,  1),
(13, 8, 'Nord-Ost Matjeshering',       '10 - 200 g glasses',  25.89,  10,  0,  15, 0);
GO

INSERT INTO ShippingAddresses (ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry) VALUES
('Vins et alcools Chevalier',   '59 rue de l''Abbaye',          'Reims',         NULL,  '51100', 'France'),
('Toms Spezialitäten',          'Luisenstr. 48',                'Münster',        NULL,  '44087', 'Germany'),
('Hanari Carnes',               'Rua do Paço, 67',              'Rio de Janeiro', 'RJ',  '05454-876', 'Brazil'),
('Victuailles en stock',        '2, rue du Commerce',           'Lyon',           NULL,  '69004', 'France'),
('Suprêmes délices',            'Boulevard Tirou, 255',         'Charleroi',      NULL,  'B-6000', 'Belgium'),
('Hanari Carnes',               'Rua do Paço, 67',              'Rio de Janeiro', 'RJ',  '05454-876', 'Brazil'),
('Chop-suey Chinese',           'Hauptstr. 31',                 'Bern',           NULL,  '3012', 'Switzerland'),
('Richter Supermarkt',          'Starenweg 5',                  'Genève',         NULL,  '1204', 'Switzerland'),
('Wellington Importadora',      'Rua do Mercado, 12',           'Resende',        'SP',  '08737-363', 'Brazil'),
('HILARION-Abastos',            'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
('Ernst Handel',                'Kirchgasse 6',                 'Graz',           NULL,  '8010', 'Austria'),
('Centro comercial Moctezuma',  'Sierras de Granada 9993',      'México D.F.',    NULL,  '05022', 'Mexico'),
('Ottilies Käseladen',          'Mehrheimerstr. 369',           'Köln',           NULL,  '50739', 'Germany'),
('Folies gourmandes',           '184, chaussée de Tournai',     'Lille',          NULL,  '59000', 'France'),
('Blauer See Delikatessen',     'Forsterstr. 57',               'Mannheim',       NULL,  '68306', 'Germany'),
('Wartian Herkku',              'Torikatu 38',                  'Oulu',           NULL,  '90110', 'Finland'),
('Frankenversand',              'Berliner Platz 43',            'München',        NULL,  '80805', 'Germany'),
('Seven Seas Imports',          '90 Wadhurst Rd.',              'London',         NULL,  'OX15 4NB', 'UK'),
('Drachenblut Delikatessen',    'Walserweg 21',                 'Aachen',         NULL,  '52066', 'Germany'),
('Rattlesnake Canyon Grocery',  '2817 Milton Dr.',              'Albuquerque',    'NM',  '87110', 'USA'),
('Old World Delicatessen',      '2743 Bering St.',              'Anchorage',      'AK',  '99508', 'USA'),
('Romero y tomillo',            'Gran Vía, 1',                  'Madrid',         NULL,  '28001', 'Spain'),
('Lonesome Pine Restaurant',    '89 Chiaroscuro Rd.',           'Portland',       'OR',  '97219', 'USA'),
('The Big Cheese',              '89 Jefferson Way Suite 2',     'Portland',       'OR',  '97201', 'USA'),
('Hungry Owl All-Night Grocers','8 Johnstown Road',             'Cork',           'Co. Cork', NULL, 'Ireland');
GO

-- ========================
-- WAVE 3: Orders
-- ========================

INSERT INTO Customers (CompanyName, ContactName, ContactTitle, Address, City, PostalCode, Country, Phone, Fax) VALUES
('Alfreds Futterkiste',          'Maria Anders',      'Sales Representative',  'Obere Str. 57',               'Berlin',        '12209', 'Germany', '030-0074321',    '030-0076545'),
('Ana Trujillo Emparedados',     'Ana Trujillo',      'Owner',                 'Avda. de la Constitución 2222','México D.F.',   '05021', 'Mexico',  '(5) 555-4729',   '(5) 555-3745'),
('Antonio Moreno Taquería',      'Antonio Moreno',    'Owner',                 'Mataderos 2312',               'México D.F.',   '05023', 'Mexico',  '(5) 555-3932',   NULL),
('Around the Horn',              'Thomas Hardy',      'Sales Representative',  '120 Hanover Sq.',              'London',        'WA1 1DP','UK',      '(171) 555-7788', '(171) 555-6750'),
('Berglunds snabbköp',           'Christina Berglund','Order Administrator',   'Berguvsvägen 8',               'Luleå',         'S-958 22','Sweden', '0921-12 34 65',  '0921-12 34 67'),
('Blauer See Delikatessen',      'Hanna Moos',        'Sales Representative',  'Forsterstr. 57',               'Mannheim',      '68306', 'Germany', '0621-08460',     '0621-08924'),
('Blondesddsl père et fils',     'Frédérique Citeaux','Marketing Manager',     '24, place Kléber',             'Strasbourg',    '67000', 'France',  '88.60.15.31',    '88.60.15.32'),
('Bólido Comidas preparadas',    'Martín Sommer',     'Owner',                 'C/ Araquil, 67',               'Madrid',        '28023', 'Spain',   '(91) 555 22 82', '(91) 555 91 99'),
('Bon app''',                    'Laurence Lebihan',  'Owner',                 '12, rue des Bouchers',         'Marseille',     '13008', 'France',  '91.24.45.40',    '91.24.45.41'),
('Bottom-Dollar Markets',        'Elizabeth Lincoln', 'Accounting Manager',    '23 Tsawassen Blvd.',           'Tsawassen',     'T2F 8M4','Canada',  '(604) 555-4729', '(604) 555-3745'),
('Bs Beverages',                 'Victoria Ashworth', 'Sales Representative',  'Fauntleroy Circus',            'London',        'EC2 5NT','UK',      '(171) 555-1212', NULL),
('Cactus Comidas para llevar',   'Patricio Simpson',  'Sales Agent',           'Cerrito 333',                  'Buenos Aires',  '1010',  'Argentina','(1) 135-5555',   '(1) 135-4892'),
('Centro comercial Moctezuma',   'Francisco Chang',   'Marketing Manager',     'Sierras de Granada 9993',      'México D.F.',   '05022', 'Mexico',  '(5) 555-3392',   '(5) 555-7293'),
('Chop-suey Chinese',            'Yang Wang',         'Owner',                 'Hauptstr. 29',                 'Bern',          '3012',  'Switzerland','0452-076545',  NULL),
('Comércio Mineiro',             'Pedro Afonso',      'Sales Associate',       'Av. dos Lusíadas, 23',         'Sao Paulo',     '05432-043','Brazil','(11) 555-7647',  NULL),
('Consolidated Holdings',        'Elizabeth Brown',   'Sales Representative',  'Berkeley Gardens 12 Brewery',  'London',        'WX1 6LT','UK',      '(171) 555-2282', '(171) 555-9199'),
('Drachenblut Delikatessen',     'Sven Ottlieb',      'Order Administrator',   'Walserweg 21',                 'Aachen',        '52066', 'Germany', '0241-039123',    '0241-059428'),
('Du monde entier',              'Janine Labrune',    'Owner',                 '67, rue des Cinquante Otages', 'Nantes',        '44000', 'France',  '40.67.88.88',    '40.67.89.89'),
('Eastern Connection',           'Ann Devon',         'Sales Agent',           '35 King George',               'London',        'WX3 6FW','UK',      '(171) 555-0297', '(171) 555-3373'),
('Ernst Handel',                 'Roland Mendel',     'Sales Manager',         'Kirchgasse 6',                 'Graz',          '8010',  'Austria', '7675-3425',      '7675-3426'),
('Familia Arquibaldo',           'Aria Cruz',         'Marketing Assistant',   'Rua Orós, 92',                 'Sao Paulo',     '05442-030','Brazil','(11) 555-9857',  NULL),
('FISSA Fabrica Inter. Salchichas','Diego Roel',      'Accounting Manager',    'C/ Moralzarzal, 86',           'Madrid',        '28034', 'Spain',   '(91) 555 94 44', '(91) 555 55 93'),
('Folies gourmandes',            'Martine Rancé',     'Assistant Sales Agent', '184, chaussée de Tournai',     'Lille',         '59000', 'France',  '20.16.10.16',    '20.16.10.17'),
('Folk och fä HB',               'Maria Larsson',     'Owner',                 'Åkergatan 24',                 'Bräcke',        'S-844 67','Sweden', '0695-34 67 21',  NULL),
('Frankenversand',               'Peter Franken',     'Marketing Manager',     'Berliner Platz 43',            'München',       '80805', 'Germany', '089-0877310',    '089-0877451');
GO

INSERT INTO Orders (CustomerID, EmployeeID, ShipVia, ShipAddressID, OrderDate, RequiredDate, ShippedDate, Freight) VALUES
(1,  5, 3, 1,  '1996-07-04', '1996-08-01', '1996-07-16', 32.38),
(2,  6, 1, 2,  '1996-07-05', '1996-08-16', '1996-07-10', 11.61),
(3,  4, 2, 3,  '1996-07-08', '1996-08-05', '1996-07-12', 65.83),
(4,  3, 1, 4,  '1996-07-08', '1996-08-05', '1996-07-15', 41.34),
(5,  4, 2, 5,  '1996-07-09', '1996-08-06', '1996-07-11', 51.30),
(6,  3, 2, 6,  '1996-07-10', '1996-07-24', '1996-07-16', 58.17),
(7,  5, 2, 7,  '1996-07-11', '1996-08-08', '1996-07-23', 22.98),
(8,  9, 3, 8,  '1996-07-12', '1996-08-09', '1996-07-15', 148.33),
(9,  3, 1, 9,  '1996-07-15', '1996-08-12', '1996-07-17', 13.97),
(10, 4, 2, 10, '1996-07-16', '1996-08-13', '1996-07-22', 81.91),
(11, 1, 3, 11, '1996-07-17', '1996-08-14', '1996-07-23', 140.51),
(12, 4, 2, 12, '1996-07-18', '1996-08-15', '1996-07-26', 3.25),
(13, 6, 1, 13, '1996-07-19', '1996-08-16', '1996-07-29', 55.09),
(14, 3, 2, 14, '1996-07-22', '1996-08-19', '1996-07-25', 3.05),
(15, 5, 2, 15, '1996-07-23', '1996-08-20', '1996-07-31', 48.29),
(16, 9, 2, 16, '1996-07-24', '1996-08-21', '1996-08-23', 146.06),
(17, 6, 1, 17, '1996-07-25', '1996-08-22', '1996-08-12', 3.67),
(18, 8, 1, 18, '1996-07-26', '1996-08-23', '1996-07-31', 55.28),
(19, 9, 3, 19, '1996-07-29', '1996-08-26', '1996-08-06', 96.04),
(20, 3, 1, 20, '1996-07-30', '1996-08-27', '1996-08-02', 6.27),
(21, 2, 1, 21, '1996-07-31', '1996-08-28', '1996-08-09', 23.79),
(22, 8, 2, 22, '1996-08-01', '1996-08-29', '1996-08-02', 1.35),
(23, 5, 2, 23, '1996-08-02', '1996-08-30', '1996-08-06', 69.53),
(24, 7, 1, 24, '1996-08-05', '1996-09-02', '1996-08-07', 40.42),
(25, 6, 2, 25, '1996-08-06', '1996-09-03', '1996-08-09', 7.45);
GO

-- ========================
-- WAVE 4: OrderDetails
-- ========================

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount) VALUES
(1,  11, 14.00, 12, 0.00),
(1,  42, 9.80,  10, 0.00),
(1,  72, 34.80, 5,  0.00),
(2,  14, 18.60, 9,  0.00),
(2,  51, 42.40, 40, 0.05),
(3,  41, 7.70,  10, 0.00),
(3,  51, 42.40, 35, 0.15),
(3,  65, 16.80, 15, 0.15),
(4,  22, 16.80, 6,  0.05),
(4,  57, 15.60, 15, 0.05),
(5,  65, 16.80, 20, 0.00),
(6,  41, 7.70,  16, 0.05),
(6,  57, 15.60, 50, 0.00),
(7,  13, 4.80,  15, 0.00),
(7,  25, 11.20, 21, 0.00),
(8,  27, 35.10, 50, 0.00),
(8,  39, 14.40, 7,  0.15),
(9,  28, 36.40, 30, 0.00),
(9,  70, 12.00, 20, 0.00),
(10, 54, 5.90,  24, 0.20),
(11, 1,  14.40, 15, 0.10),
(12, 10, 24.80, 30, 0.00),
(13, 26, 24.90, 15, 0.05),
(14, 29, 99.00, 4,  0.00),
(14, 39, 14.40, 8,  0.10),
(15, 49, 16.00, 24, 0.00),
(16, 55, 19.20, 25, 0.00),
(17, 70, 12.00, 30, 0.00),
(18, 9,  77.60, 25, 0.00),
(19, 17, 31.20, 6,  0.05),
(20, 48, 10.20, 28, 0.00),
(21, 43, 36.80, 20, 0.00),
(22, 3,  8.00,  24, 0.00),
(23, 71, 17.20, 20, 0.05),
(24, 15, 13.90, 14, 0.00),
(25, 4,  17.60, 21, 0.00);
GO

INSERT INTO EmployeeTerritories (EmployeeID, TerritoryID) VALUES
(1, '06897'), (1, '19713'),
(2, '01581'), (2, '01730'), (2, '01833'), (2, '02116'), (2, '02139'), (2, '02184'),
(3, '30346'), (3, '31406'), (3, '32859'), (3, '33607'),
(4, '20852'),
(5, '02903'), (5, '08837'), (5, '19428'), (5, '19713'), (5, '40222'), (5, '44122'),
(6, '27403'), (6, '27511'), (6, '29202'),
(7, '55113'), (7, '55439'),
(8, '60179'), (8, '60601'),
(9, '94025'), (9, '94105'), (9, '95008'), (9, '95054'), (9, '95060');
GO

-- Add missing products to cover all OrderDetails references
INSERT INTO Products (SupplierID, CategoryID, ProductName, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued) VALUES
(4,  8, 'Ikura Extra',              '12 - 200 ml jars',     31.00, 31, 0,  0,  0),  -- ID 31
(5,  4, 'Manchego Reserva',         '10 - 500 g pkgs.',     38.00, 86, 0,  0,  0),  -- ID 32
(6,  8, 'Wakame',                   '2 kg box',              6.00, 24, 0,  5,  0),  -- ID 33
(6,  7, 'Silken Tofu',              '40 - 100 g pkgs.',     23.25, 35, 0,  0,  0),  -- ID 34
(7,  3, 'Lamington',                '32 - 500 g boxes',     17.45, 29, 0, 10,  0),  -- ID 35
(8,  3, 'Shortbread',               '10 boxes x 12 pieces',  9.20, 25, 0,  5,  0),  -- ID 36
(9,  5, 'Crispbread',               '24 - 500 g pkgs.',     21.00,104, 0, 25,  0),  -- ID 37
(10, 1, 'Açaí Drink',               '12 - 355 ml cans',      4.50, 20, 0,  0,  0),  -- ID 38
(11, 3, 'Hazelnut Praline',         '20 - 450 g glasses',   14.00, 76, 0, 30,  0),  -- ID 39
(12, 7, 'Organic Sauerkraut',       '25 - 825 g cans',      45.60, 26, 0,  0,  0),  -- ID 40
(13, 6, 'Smoked Bratwurst',         '50 bags x 30 sausgs.', 23.79,  0, 0,  0,  0),  -- ID 41
(14, 1, 'Côte de Blaye',            '12 - 75 cl bottles',  263.50, 17, 0, 15,  0),  -- ID 42
(15, 4, 'Gudbrandsdalsost',         '10 kg pkg.',           36.00, 26, 0, 15,  0),  -- ID 43
(16, 1, 'Sasquatch Ale',            '24 - 12 oz bottles',   14.00, 111,0, 15,  0),  -- ID 44
(17, 8, 'Rogede sild',              '1k pkg.',              9.50,   5, 70, 15,  0),  -- ID 45
(18, 8, 'Spegesild',                '4 - 450 g glasses',   12.00,  95, 0,  0,  0),  -- ID 46
(19, 3, 'Zaanse koeken',            '10 - 4 oz boxes',      9.50,  36, 0,  0,  0),  -- ID 47
(20, 3, 'Chocolade',                '10 pkgs.',             12.75,  15, 70, 25,  0),  -- ID 48
(21, 3, 'Maxilaku',                 '24 - 50 g pkgs.',      20.00,  10, 60, 15,  0),  -- ID 49
(22, 3, 'Valkoinen suklaa',         '12 - 100 g bars',      16.25,  65, 0, 30,  0),  -- ID 50
(23, 7, 'Manjimup Dried Apples',    '50 - 300 g pkgs.',     53.00,  20, 0, 10,  0),  -- ID 51
(24, 5, 'Filo Mix',                 '16 - 2 kg boxes',       7.00,  38, 0, 25,  0),  -- ID 52
(25, 6, 'Perth Pasties',            '48 pieces',            32.80,   0, 0,  0,  1),  -- ID 53
(26, 1, 'Tourtière',                '16 pies',              7.45,   21, 0, 10,  0),  -- ID 54
(27, 6, 'Pâté chinois',             '24 boxes x 2 pies',   24.00,  115, 0, 20,  0),  -- ID 55
(28, 5, 'Gnocchi di nonna Alice',   '24 - 250 g pkgs.',     38.00,  21, 10, 30,  0),  -- ID 56
(29, 6, 'Ravioli Angelo',           '24 - 250 g pkgs.',     19.50,  36, 0, 20,  0),  -- ID 57
(1,  8, 'Escargots de Bourgogne',   '24 pieces',             13.25, 62, 0, 20,  0),  -- ID 58
(2,  2, 'Raclette Courdavault',     '5 kg pkg.',            55.00,  79, 0,  0,  0),  -- ID 59
(3,  4, 'Camembert Pierrot',        '15 - 300 g rounds',    34.00,  19, 0,  0,  0),  -- ID 60
(4,  2, 'Sirop d''érable',          '24 - 500 ml bottles',  28.50,  13, 0, 25,  0),  -- ID 61
(5,  2, 'Tarte au sucre',           '48 pies',              49.30,  17, 0,  0,  0),  -- ID 62
(6,  2, 'Vegie-spread',             '15 - 625 g jars',      43.90,  24, 0,  5,  0),  -- ID 63
(7,  3, 'Wimmers gute Semmelknödel','20 bags x 4 pieces',   33.25,  22,80, 30,  0),  -- ID 64
(8,  2, 'Louisiana Fiery Hot Pepper Sauce','32 - 8 oz bottles',21.05,76,0, 0,  0),  -- ID 65
(9,  2, 'Louisiana Hot Spiced Okra','24 - 8 oz jars',       17.00,   4, 100,20,  0),  -- ID 66
(10, 1, 'Laughing Lumberjack Lager','24 - 12 oz bottles',   14.00,  52, 0,  0,  0),  -- ID 67
(11, 3, 'Scottish Longbreads',      '10 boxes x 8 pieces',  12.50,   6, 10, 15,  0),  -- ID 68
(12, 4, 'Gudbrandsdalsost Extra',   '10 kg pkg.',           36.00,  26, 0, 15,  0),  -- ID 69
(13, 8, 'Outback Lager',            '24 - 355 ml bottles',  15.00,  15, 10, 30,  0),  -- ID 70
(14, 4, 'Flotemysost',              '10 - 500 g pkgs.',     21.50,  26, 0, 15,  0),  -- ID 71
(15, 4, 'Mozzarella di Giovanni',   '24 - 200 g pkgs.',     34.80,  14, 0,  0,  0);  -- ID 72
GO