INSERT INTO books (id, title, author, country, year, price, quantity)
VALUES 
    (uuid_generate_v4()::uuid,'The flowers of Evil', 'Baudelaire', 'France', 1857, 12.99, 7),
    (uuid_generate_v4()::uuid,'In search of lost time', 'Marcel Proust', 'France', 1922, 11.00, 4),
    (uuid_generate_v4()::uuid,'The Stranger', 'Albert Camus', 'France', 1942, 5.99, 1),
    (uuid_generate_v4()::uuid,'The count of Monte Cristo', 'Alexandre Dumas', 'France', 1846, 12.99, 3),
    (uuid_generate_v4()::uuid,'1984', 'George Owell', 'English', 1949, 2.99, 3),
    (uuid_generate_v4()::uuid,'Harry Potter', 'J.K. Rowling', 'English', 1997, 12.99, 10),
    (uuid_generate_v4()::uuid,'Brave new word', 'Aldous Huxley', 'English', 1932, 9.99, 4),
    (uuid_generate_v4()::uuid,'Lord of the Flies', 'William Golding', 'English', 1954, 9.99, 0),
    (uuid_generate_v4()::uuid,'To Kill a Mockingbird', 'Harper Lee', 'English', 1960, 9.99, 9),
    (uuid_generate_v4()::uuid,'A Clockwork Orange', 'Anthony Burgess', 'English', 1962, 9.99, 12),
    (uuid_generate_v4()::uuid,'Don Quixote', 'Miguel de Cervantes', 'Spain', 1605, 13.99, 4),
    (uuid_generate_v4()::uuid,'The Hand of Fatima', 'Ildefonso Falcones', 'Spain', 2009, 16.99, 0),
    (uuid_generate_v4()::uuid,'The House of Bernarda Alba', 'Federico García Lorca', 'Spain', 1945, 24.99,2),
    (uuid_generate_v4()::uuid,'The Alchemist', 'Paul Coelho', 'Brazil', 1988, 19.99, 9),
    (uuid_generate_v4()::uuid,'The house of the Spirits', 'Isabel Allende', 'Chile', 1982, 29.99, 12),
    (uuid_generate_v4()::uuid,'The Bad Girl', 'Mario Vargas', 'Peru', 2006, 18.99,4),
    (uuid_generate_v4()::uuid,'The Art of War', 'Sun Tzu', 'China', -500, 18.99, 4),
    (uuid_generate_v4()::uuid,'Spring Snow', 'Yukio Mishima', 'Japan', 1969, 34.99, 5),
    (uuid_generate_v4()::uuid,'The Book Thief', 'Markus Zusak', 'Germany', 2005, 15.99, 8),
    (uuid_generate_v4()::uuid,'The Secret River', 'Kate Grenville', 'Australia', 2005, 4.99, 9),
    (uuid_generate_v4()::uuid,'Xala', 'Ousmane Sembène', 'Senegal', 1973, 13.99, 3),
    (uuid_generate_v4()::uuid,'Pan Tadeusz', 'Adam Mickiewicz', 'Poland', 1834, 14.99, 3),
    (uuid_generate_v4()::uuid,'A Tale of Love and Darkness', 'Amos Oz', 'Israel', 2002, 13.99, 5),
    (uuid_generate_v4()::uuid,'The Prophet', 'Kahlil Gibran', 'Lebanon', 1923, 10.99, 4),
    (uuid_generate_v4()::uuid,'El encantador de serpientes', 'Lucy Valladares', 'Honduras', 2015, 12.99, 2),
    (uuid_generate_v4()::uuid,'Anne of Green Gables', 'Lucy Maud Montgomery', 'Canada', 1908, 8.99, 5),
    (uuid_generate_v4()::uuid,'Life of Pi', 'Yann Martel', 'Canada', 2001, 10.99, 3),
    (uuid_generate_v4()::uuid,'Please Look After Mom', 'Kyung-Sook Shin', 'Korea', 2008, 12.99, 4),
    (uuid_generate_v4()::uuid,'The Vegetarian', 'Han Kang', 'Korea', 2007, 11.99, 6),
    (uuid_generate_v4()::uuid,'Pachinko', 'Min Jin Lee', 'Korea', 2017, 14.99, 7);

/*INSERT INTO bookstore (id,name, country, city, phone, address, mail)
VALUES 
(uuid_generate_v4()::uuid,'Ulysse', 'Canada', 'Montreal', '+1514 843 9447', '4176 rue Saint-Denis H2W 2M5', 'st-denis@ulysse.ca'),    
(uuid_generate_v4()::uuid,'Librería La Central', 'Spain', 'Barcelona', '+34 932 72 58 95', 'Carrer de Mallorca 237 08008', 'info@lacentral.com'),    
(uuid_generate_v4()::uuid,'Powells Bookstore', 'United-States', 'Chicago', '+1 773-955-7780', '1501 E 57th St Chicago IL 60637', 'info@powellschicago.com'),    
(uuid_generate_v4()::uuid,'Librería Paradiso', 'Honduras', 'Tegucigalpa', '+504 2239-8757', 'Colonia Palmira', 'info@libreriaparadiso.hn'),    
(uuid_generate_v4()::uuid,'Librería El Virrey', 'Peru', 'Lima', '+51 1 446-7252', 'Av. Larco 833 Miraflores', 'contacto@libreriavirrey.com'),    
(uuid_generate_v4()::uuid,'Tsutaya Books', 'Japan', 'Tokyo', '+81 3-5428-7551', '17-5 Sarugakucho Shibuya City 150-0033', 'info@tsutaya.co.jp'),    
(uuid_generate_v4()::uuid,'Libreria Dante & Descartes', 'Italy', 'Napoli', '+39 081 551 1551', 'Via Toledo 268 80134 NA', 'info@danteanddescartes.com'),  
(uuid_generate_v4()::uuid,'Diwan Bookstore', 'Egypt', 'Cairo', '+20 2 2736 2639', '159 26th July Street Zamalek', 'info@diwanegypt.com'), 
(uuid_generate_v4()::uuid,'Type Books', 'Canada', 'Toronto', '+1 416-366-8973', '883 Queen St W M6J 1G3', 'info@typebooks.ca'),  
(uuid_generate_v4()::uuid,'Beijing Bookworm', 'China', 'Pekin', '+86 10 6586 9507', 'Building 4 Nan Sanlitun Road Chaoyang District', 'nomail@nomail.com'),
(uuid_generate_v4()::uuid,'Librería Nacional', 'Chili', 'Santiago', '+56 2 2333 0120', 'Av. Providencia 2700 Providencia', 'info@librerianacional.cl'),    
(uuid_generate_v4()::uuid,'Foyles', 'United Kingdom', 'London', '+44 20 7437 5660', '107 Charing Cross Rd WC2H 0DT', 'info@foyles.co.uk'),
(uuid_generate_v4()::uuid,'Tipos Infames', 'Spain', 'Madrid', '+34 915 22 32 78', 'Calle San Joaquín 3 28004', 'info@tiposinfames.com'),    
(uuid_generate_v4()::uuid,'Letras Corsarias', 'Spain', 'Salamanca','+34 923 21 19 47', 'Calle Rúa Mayor 10 37002', 'info@letrascorsarias.com'); 
*/   




