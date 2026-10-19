CREATE TABLE Customer_Details (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(35) NOT NULL,
    Age INT NOT NULL,
    Gender ENUM('Male', 'Female', 'Others'),
    Date_Of_Birth DATE,
    Created_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);