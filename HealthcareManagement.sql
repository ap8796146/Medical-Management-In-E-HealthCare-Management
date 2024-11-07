/********************----E-Health-CareManagement-System-----***************/

-- Drop the database if it already exists
DROP DATABASE IF EXISTS HealthcareManagement;

-- Create the database
CREATE DATABASE HealthcareManagement;
USE HealthcareManagement;

/************************* Users Table ******************************/
CREATE TABLE Users (
    userID INT,
    userType VARCHAR(100),
    Password VARCHAR(100),
    PRIMARY KEY (userID, userType)
);

-- Insert records into Users table
INSERT INTO Users (userID, userType, Password) VALUES
(1, 'Patient', 'One'), (2, 'Patient', 'Two'), (3, 'Patient', 'Three'), (4, 'Patient', 'Four'),
(5, 'Patient', 'Five'), (6, 'Patient', 'Six'), (7, 'Patient', 'Seven'), (8, 'Patient', 'Eight'),
(9, 'Patient', 'Nine'), (10, 'Patient', 'Ten'), (11, 'Patient', 'Eleven'), (12, 'Patient', 'Twelve'),
(13, 'Patient', 'Thirteen'), (14, 'Patient', 'Fourteen'), (15, 'Patient', 'Fifteen'), 
(16, 'Patient', 'Sixteen'), (17, 'Patient', 'Seventeen'), (18, 'Patient', 'Eighteen'),
(19, 'Patient', 'Nineteen'), (20, 'Patient', 'Twenty'),
(1, 'Doctor', 'One'), (2, 'Doctor', 'Two'), (3, 'Doctor', 'Three'), (4, 'Doctor', 'Four'),
(5, 'Doctor', 'Five'), (6, 'Doctor', 'Six'), (7, 'Doctor', 'Seven'), (8, 'Doctor', 'Eight'),
(9, 'Doctor', 'Nine'), (10, 'Doctor', 'Ten'), (11, 'Doctor', 'Eleven'), (12, 'Doctor', 'Twelve'),
(13, 'Doctor', 'Thirteen'), (14, 'Doctor', 'Fourteen'), (15, 'Doctor', 'Fifteen'), 
(16, 'Doctor', 'Sixteen'), (17, 'Doctor', 'Seventeen'), (18, 'Doctor', 'Eighteen'),
(19, 'Doctor', 'Nineteen'), (20, 'Doctor', 'Twenty');

/**************************** Patients Table ******************************/
CREATE TABLE Patients (
    PatientID INT NOT NULL,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Gender VARCHAR(5),
    ContactNumber VARCHAR(11),
    Age INT,
    EmailID VARCHAR(30),
    BloodGroup VARCHAR(5),
    Address VARCHAR(50),
    PRIMARY KEY (PatientID)
);

-- Insert records into Patients table
INSERT INTO Patients (PatientID, First_Name, Last_Name, Gender, ContactNumber, Age, EmailID, BloodGroup, Address) VALUES
(1, "Sanjay", "Gosavi", "M", "9828698648", 28, "sanjay24gosavi@gmail.com", "B+", "D-402 Anand Nagar M.I. road Delhi"),
(2, "Anand", "Sharma", "M", "9858688788", 30, "anand54sharma@gmail.com", "B+", "E-002 Tilak Nagar New Delhi"),
(3, "Subhash", "Garg", "M", "9667479292", 34, "gargsubash1703@gmail.com", "A+", "Basant Vihar Pune"),
(4, "Priya", "Khandelwal", "F", "8005629518", 28, "sanjay24gosavi@gmail.com", "B-", "PlotNo. 104 Subhash chowk Chandigarh"),
(5, "Pritam", "Yadav", "M", "9828652524", 18, "letsmailprit02@gmail.com", "AB+", "C-03 Vaishali Nagar Jaipur"),
(6, "Sanju", "Sharma", "M", "9279264253", 42, "sansharma8@gmail.com", "B-", "Gopal Nagar Bharatpur"),
(7, "Tejaswani", "Goswami", "F", "8005263213", 32, "goswamiteja@gmail.com", "A-", "Prasad Dham Mumbai"),
(8, "Sumit", "Bhardwaj", "M", "8214358648", 46, "sumit4566bhardwaj@gmail.com", "O+", "Surya Path Roorki"),
(9, "Kavita", "Jain", "F", "9825426363", 15, "jain78kavi@gmail.com", "AB+", "Gaurav Path M.I. road Delhi"),
(10, "Yogesh", "Sihra", "M", "9828565642", 28, "yogeshshira28@gmail.com", "AB-", "Durgapur road Kolkatta"),
(11, "Bhanu", "Pratap", "M", "8052674312", 68, "bahnupratap@gmail.com", "O+", "vivekanand street Malipura"),
(12, "Sonam", "Tiwari", "F", "9797465823", 18, "sonamtiwari423@gmail.com", "A+", "E-03 Tonk Phatak Jaipur"),
(13, "Neha", "Mehta", "F", "7073165498", 24, "mehtaneha556@gmail.com", "AB-", "rani chawk jalandhar"),
(14, "Roop", "Devi", "F", "8302567823", 56, "roopdevima@gmail.com", "B-", "Chandni chawak Delhi"),
(15, "Yash", "Chaudary", "M", "9886756678", 36, "chaudaryash011@gmail.com", "AB+", "Rashi Mansion Indore"),
(16, "Suraj", "Yadav", "M", "8308576312", 24, "itssuraj@gmail.com", "A+", "Usha vihar bhilwada"),
(17, "Arjun", "Sethi", "M", "7782385721", 42, "arjun11sethi@gmail.com", "B+", "Flat no.33 Behind Uday Street Bhopal"),
(18, "Priya", "Goyal", "F", "8857283942", 32, "angelpriya@gmail.com", "A-", "Bajri Mandi Gandhi Path Kota"),
(19, "Aanvi", "Singhal", "F", "9815215367", 12, "aanvisinghal100@gmail.com", "B-", "Chhatrapati Shivaji Mansion Mumbai"),
(20, "Rohit", "Singh", "M", "8358032156", 27, "rohitsingh124@gmail.com", "O+", "Ganesh Vihar Mudrai");

/***************************** Doctors Table ******************************/
CREATE TABLE Doctors (
    DoctorID INT NOT NULL,
    First_Name VARCHAR(30),
    Last_Name VARCHAR(30),
    Gender VARCHAR(10),
    ContactNumber VARCHAR(11),
    Age INT,
    Entry_Charge INT,
    Qualification VARCHAR(50),
    Doctor_Type VARCHAR(50),
    Email_Id VARCHAR(30),
    PRIMARY KEY (DoctorID)
);

-- Insert records into Doctors table
INSERT INTO Doctors (DoctorID, First_Name, Last_Name, Gender, ContactNumber, Age, Entry_Charge, Qualification, Doctor_Type, Email_Id) VALUES
(1, "Vivek", "Bhardwaj", "M", "9243668213", 32, 400, "MD", "Ear", "bhardwajvivek@gmail.com"),
(2, "Vinod", "Gupta", "M", "9382674321", 42, 300, "BDS", "Lungs", "vinod24gupta@gmail.com"),
(3, "Ashish", "Arora", "M", "8213264251", 47, 200, "BHMS", "Eye", "arorashish5871@gmail.com"),
(4, "Poonam", "Mishra", "F", "7782934712", 27, 700, "MD", "Kidney", "punamishra@gmail.com"),
(5, "Madhu", "Srivastva", "F", "9982675837", 33, 500, "MD", "Heart", "srivastvamadhu@gmail.com"),
(6, "Anoop", "Faujdar", "M", "9788855387", 58, 550, "MBBS", "Lungs", "anoopfauji@gmail.com"),
(7, "Ankita", "Khandelwal", "F", "9985671358", 36, 300, "BAMS", "General_Physicist", "khandelwalankita@gmail.com"),
(8, "Abhishek", "Agarwal", "M", "8763505789", 25, 200, "Phd", "Kidney", "abhishekagarwal25@gmail.com"),
(9, "Piyush", "Gupta", "M", "7855671213", 41, 750, "MD", "Heart", "piyush4gupta@gmail.com"),
(10, "Shruti", "Saini", "F", "9154373522", 28, 300, "MD", "Nose", "sainishruti8@gmail.com"),
(11, "Prerna", "Lodha", "F", "9826345278", 32, 500, "BDS", "Ear", "lodhaprerna@gmail.com"),
(12, "Vikram", "Rana", "M", "8923672384", 37, 400, "MBBS", "Brain", "ranavikram@gmail.com"),
(13, "Ritika", "Sharma", "F", "9643268267", 29, 250, "MBBS", "Eye", "ritika27sharma@gmail.com"),
(14, "Siddharth", "Sharma", "M", "8965834273", 40, 300, "MBBS", "Nose", "sharmasid456@gmail.com"),
(15, "Sumit", "Choudhary", "M", "9136274813", 47, 450, "BAMS", "Heart", "sumitchoudhary@gmail.com"),
(16, "Raman", "Sethi", "M", "7983325678", 44, 350, "BDS", "General_Physicist", "ramansethi3@gmail.com"),
(17, "Amit", "Mishra", "M", "8305626342", 30, 200, "BDS", "Skin", "mishraamit@gmail.com"),
(18, "Richa", "Garg", "F", "8505263183", 26, 600, "MD", "Brain", "richagarg8@gmail.com"),
(19, "Veena", "Sinha", "F", "9113626782", 27, 150, "MD", "Lungs", "sinhaveena9@gmail.com"),
(20, "Anju", "Aggarwal", "F", "9812358974", 35, 650, "Phd", "Skin", "anjuaggarwal@gmail.com");

/************************** Appointments Table **************************/
CREATE TABLE Appointments (
    AppointmentID INT,
    Problem VARCHAR(50),
    PatientId INT,
    DoctorName VARCHAR(20),
    DoctorID INT,
    DoctorType VARCHAR(20),
    Qualification VARCHAR(20),
    DoctorFees INT,
    PaymentStatus VARCHAR(33),
    Appointment_Status VARCHAR(30),
    PRIMARY KEY (AppointmentID),  -- Adding primary key constraint
    CONSTRAINT FK_patient FOREIGN KEY (PatientId) REFERENCES Patients(PatientID),
    CONSTRAINT FK_doctor FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

/***************************** Reports Table ****************************/
CREATE TABLE Reports (
    ReportID INT,
    AppointmentID INT,
    PatientID INT,
    DoctorID INT,
    MedicinePrescribed VARCHAR(200),
    DoctorComment VARCHAR(200),
    PRIMARY KEY (ReportID),
    CONSTRAINT FK_appointment FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID),
    CONSTRAINT FK_patient_in_report FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    CONSTRAINT FK_doctor_in_report FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

/****************************** Feedback Table ***************************/
CREATE TABLE Feedback (
    PatientID INT,
    Points INT,
    Doc_Nature VARCHAR(200),
    Location VARCHAR(200),
    PatientComment VARCHAR(1000),
    CONSTRAINT FK_patient_feedback FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
);

-- To view data from tables (example for Users table)
SELECT * FROM Users;
SELECT * FROM Patients;
SELECT * FROM Doctors;
SELECT * FROM Appointments;
SELECT * FROM Reports;
SELECT * FROM Feedback;
