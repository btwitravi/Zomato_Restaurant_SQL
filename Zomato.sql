/*____________________________________________Zomato Restaurant_____________________________________________*/

-- Create the DataBase 
Create Database Zomato;

use Zomato;


-- create a Country Code Table
CREATE TABLE Country_code (
    Country_Code INT NOT NULL,
    Country VARCHAR(150) NOT NULL,
    PRIMARY KEY (Country_Code)
);

-- Create a Zomato Table
CREATE TABLE Zomato (
    Restaurant_ID INT NOT NULL,
    Restaurant_Name VARCHAR(300) NOT NULL,
    Country_Code INT NOT NULL,
    City VARCHAR(150) NOT NULL,
    Longitude decimal(10,2) NOT NULL,
    Latitude decimal(10,2) NOT NULL,
    Cuisines TEXT NOT NULL,
    Average_Cost_for_two INT NOT NULL,
    Currency VARCHAR(100) NOT NULL,
    Table_booking VARCHAR(15) NOT NULL,
    Online_delivery VARCHAR(15) NOT NULL,
    delivering_now VARCHAR(15) NOT NULL,
    order_menu VARCHAR(15) NOT NULL,
    Price_range INT NOT NULL,
    Aggregate_rating DECIMAL(5 , 2 ) NOT NULL,
    Rating_color VARCHAR(50) NOT NULL,
    Rating_text VARCHAR(50) NOT NULL,
    Votes INT NOT NULL
); 

alter table zomato add primary key(Restaurant_ID);

alter table zomato add constraint adding_forkey foreign key (Country_Code) references Country_code(Country_Code);


