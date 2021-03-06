CREATE TABLE Auto_owners(
  id INT AUTO_INCREMENT PRIMARY KEY,
  surname VARCHAR(30),
  name VARCHAR(30),
  fathername VARCHAR(30),
  phone_number VARCHAR(20),
  post_index INT,
  country VARCHAR(20),
  region VARCHAR(20),
  district VARCHAR(20),
  city VARCHAR(20),
  street VARCHAR(20),
  house INT,
  flat INT,
  car_brand VARCHAR(20),
  car_number VARCHAR(20),
  tech_number VARCHAR(20),
  price INT,
  car_year INT
  );
  
  
  INSERT INTO Auto_owners 
  (surname,name, fathername, phone_number, post_index, country, region,
   district, city, street, house, flat, car_brand, car_number, tech_number, price, car_year)
   VALUES
   ("Yanusik", "Oleg", "Olegovich", "+375447568883", 220095,"Belarus","Minsk", "Leninski",
    "Minsk","Yakubov", 56, 294, "Audi", "1351GD-GH1", "1731731715", 12000, 2005),
    
    ("Borsukov", "Arseniy", "Dmitrievich", "+375447564243", 211573,"Belarus","Minsk", "Penvomaysky",
    "Minsk","Oktyabrskaya", 21, 13, "Volkswagen", "345AT-TEX", "19251850854", 20000, 2017),
    
    ("Bazhenov", "Evgeniy", "Pavlovich", "+37529543781635", 245673,"Belarus","Minskiy", "Soligorsky",
    "Solygorsk","Krasnoarmeyskaya", 13, 48, "Mitsubishi", "2314AI-GR3", "124157482", 19000, 2013),
    
    ("Rutkevich", "Rodion", "Alexandrovich", "+375337235235", 220195,"Belarus","Gomel", "Stalinski",
    "Gomel","Proletarskaya", 50, 7, "Renault", "85493YE-KL3", "1731743415", 15000, 2000);
    
  
  /*• Используя инструкцию alter, добавить дополнительные столбцы, один из
которых vendor_id (тип integer и содержит идентификаторы производителей
автомобилей).*/
  ALTER TABLE Auto_owners ADD vendor_id INT;
    UPDATE Auto_owners
    SET vendor_id = 1 WHERE car_brand = "Audi";
    UPDATE Auto_owners
    SET vendor_id = 2 WHERE car_brand = "Volkswagen";
    UPDATE Auto_owners
    SET vendor_id = 3 WHERE car_brand = "Renault";
  
  /*Создать таблицу vendor (id, ven_name, ven_description).*/
  CREATE TABLE vendor(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ven_name VARCHAR(50),
    ven_description VARCHAR(400)
    );
   INSERT INTO vendor (ven_name, ven_description) VALUES
     ("Audi","Audi is the best!"),
     ("Volkswagen", "Das auto"),
     ("Renault","Cool stuff");
     
  
  
  
