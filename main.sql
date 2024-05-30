.header on
.mode column
-- when viewing the output please make the size of the window as big as possible or it will look wonky

Create TABLE posTitles 
(
  posID INTEGER PRIMARY KEY,
  jobTitle TEXT
);

Insert INTO posTitles values
  (101, "TIA Intern"),
  (102, "Hardware Engineer Intern"),
  (103, "Software Engineer Intern"),
  (104, "Business Services Intern"),
  (105, "Mental Health Counseling Intern"),
  (106, "Supply Chain Intern"),
  (107, "HR Managing Intern");


  
Create TABLE internships
(
  intID INTEGER PRIMARY KEY AUTOINCREMENT,
  company TEXT,
  posID INTEGER, 
  hours INTEGER, 
  pay INTEGER,
  requirements TEXT
);


Insert INTO internships values
(1,'MVUSD', 101, 4, 23, "In Highschool or about to graduate from highschool"),
  
(2,'HP', 102, 8, 25, "Pursuing an education in a computer science related field."),
  
(3,'Johnson & Johnson', 103, 8, 27, "Highly motivated candidate who is interested in revolutionizing the world of medical robotics"),
  
(4,'TikTok',103, 5, 45, "Pursuing a Undergraduate/Graduate/Master/in Software Development, Computer Science, Computer Engineering, or a related technical discipline."),
  
(5,'Netflix', 103, 4, 40, "Degree in Computer Science, Software Engineering, or a related field and experience in software engineering and programming"),
  
(6,'MVUSD', 104, 4, 23, "In Highschool or about to graduate from highschool"),
  
(7, 'Transformations Counseling PLLC', 105, 4, 25, "Currently enrolled in a Clinical Mental Health Counseling (CMHC) Program"),
  
(8, 'Williams International', 106, 8, 24, "Must be pursuing a degree in Supply Chain" ),
  
(9, 'Procter & Gamble', 107, 8, 29, "Must be in junior year of a Bachelors program or 1st year of Masters program" ),
  
(10, 'Blizzard', 103, 5, 25, "Pursuing an associates, bachelors, masters, or PhD");

.print 'Internships by Companies A-Z, Ascending:'
SELECT internships.company, posTitles.jobTitle FROM internships
INNER JOIN posTitles ON internships.posID = posTitles.posID ORDER BY company ASC;

.print ''
  
.print 'Internships by Pay Rate, Greatest to Least:'
SELECT internships.company, posTitles.jobTitle, internships.pay FROM internships
INNER JOIN posTitles ON internships.posid = posTitles.posID ORDER BY pay DESC;

