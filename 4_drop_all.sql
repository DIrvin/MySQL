/* Drop All 
Derek Irvin
*/


/* To drop the tables you drop them in the opposite order that you created them
meaning we drop all the foreign keys first so we have no issues dropping the tables
the foreign keys are pointing to.
*/

/*
Drop Order:
1) ConductedIn
2) Takes
3) Exam
4) ClassRoom
5) Enrolls
6) Section
7) Course
8) Student 
*/

drop table ConductedIn;
drop table Takes;
drop table Exam;
drop table ClassRoom;
drop table Enrolls;
drop table Section;
drop table Course;
drop table Student;
