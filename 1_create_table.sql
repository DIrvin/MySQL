/* Section 1 Homework 3
Derek Irvin

Table Creation Order:
1) Student 
2) Course
3) Section
4) Enrolls
5) ClassRoom
6) Exam
7) Takes
8) ConductedIn

*Note you could do ClassRoom as Number 3 as well since it has no foreign keys. 
* I just went down the list. 
*/

/* Create  Course Table 
CourseNo is VarChar since in Section 3 it is a combination of letters and numbers
CourseName is a VarChar since the name can differ 
Department is VarChar as well usually a string
*/
create table Course ( CourseNo varchar(10) not null, CourseName varchar(50) not null, Department varchar(20) not null, primary key(CourseNo)) engine = innodb;

/* Create  Enrolls Table 
A bunch of foreign keys originally explained
*/
create table Enrolls(SSN varchar(14) not null, SectionNo integer not null, CourseNo varchar(10) not null, foreign key(SSN) references Student(SSN), foreign key(CourseNo, SectionNo) references Section(CourseNo, SectionNo), primary key(SSN, SectionNo, CourseNo)) engine = innodb;

/* Create  Exam Table 
ExamNo is an Integer value for the exams numbers
E_Date is a date therefore we use Date
E_Time uses a time for similar reason to E_Date
*/
create table Exam(CourseNo varchar(10) not null, SectionNo integer not null, ExamNo integer not null, E_Date date not null, E_Time time not null, foreign key(CourseNo, SectionNo) references Section(CourseNo, SectionNo), primary key(CourseNo, SectionNo, ExamNo)) engine = innodb;

/* Create  ConductedIn Table 
Bunch of Foreign Keys originally explained
*/
create table ConductedIn(RoomNo integer not null, Building varchar(20) not null, CourseNo varchar(10) not null, SectionNo integer not null, ExamNo integer not null, primary key(RoomNo, Building, CourseNo, SectionNo, ExamNo), foreign key(RoomNo, Building) references ClassRoom(RoomNo, Building), foreign key(CourseNo, SectionNo, ExamNo) references Exam(CourseNo, SectionNo, ExamNo)) engine = innodb;

/* Create  Takes Table 
Result is a letter grade as seen in Seciton 3 so we use varchar(2).
*/
create table Takes(SSN varchar(14) not null, CourseNo varchar(10) not null, SectionNo integer not null, ExamNo integer not null, Result varchar(1) not null, primary key (SSN, CourseNo, SectionNo, ExamNo), foreign key(SSN) references Student(SSN), foreign key(CourseNo, SectionNo, ExamNo) references Exam(CourseNo, SectionNo, ExamNo)) engine = innodb;

/* Create  Section Table 
SectionNo is an Integer value since its a digit value
Instructor is a varchar since the instructors name is a string
*/
create table Section( CourseNo varchar(10) not null, SectionNo integer not null, Instructor varchar(20) not null, primary key(SectionNo, CourseNo), foreign key(CourseNo) references Course(CourseNo) ) engine = innodb;

/* Create  ClassRoom Table 
Capacity is an integer value for the room capacity is usually a Digit.
*/
create table ClassRoom(RoomNo integer not null, Building varchar(20) not null, Capacity integer not null, primary key(RoomNo, Building)) engine = innodb;

/* Create  Student Table 
SSN, FirstName, LastName, Street, City, State, Zip are all VarChar
*/
create table Student(SSN varchar(14) not null, FirstName varchar(15) not null, LastName varchar(20) not null, Street varchar(30), City varchar(15), State varchar(12) not null, Zip integer not null, primary key(SSN)) engine = innodb;
