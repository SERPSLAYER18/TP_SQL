/*Вывести данные про автомобили марки «Audi».*/
SELECT * FROM Auto_owners WHERE car_brand = "Audi";

/*Вывести данные о владельцах автомобилей в форме идентификатор
владельца, фамилия, имя, № телефона; марка автомобиля, номер
автомобиля, название производителя.*/
SELECT Auto_owners.id, Auto_owners.surname, Auto_owners.name , Auto_owners.phone_number, Auto_owners.car_brand, Auto_owners.car_number, vendor.ven_name 
FROM Auto_owners INNER JOIN vendor
ON Auto_owners.vendor_id = vendor.id;

/*подсчет количества владельцев автомобилей с помощью count, если год
выпуска автомобиля=2017*/
SELECT COUNT(*) FROM Auto_owners WHERE car_year = 2017;

/*суммарная стоимость автомобилей с помощью sum, если год выпуска >2005*/
SELECT SUM(price) FROM Auto_owners WHERE car_year>2005;

/* максимальная и минимальная стоимость автомобиля с помощью max и min*/
SELECT MAX(price), MIN(price) FROM Auto_owners;

/*Используя инструкцию inner join вывести полные сведения о владельцах
автомобилей и производителях для производителей с id = 1 и 2*/
SELECT Auto_owners.*, vendor.*
FROM Auto_owners INNER JOIN vendor
ON Auto_owners.vendor_id = vendor.id
WHERE Auto_owners.vendor_id <3;
