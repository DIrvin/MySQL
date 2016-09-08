/* Queries 
Derek Irvin

*/

/*Query 1*/

Select S.SSN, S.FirstName, S.LastName
From Course as C, Enrolls as E, Student as S
Where C.CourseName = 'Advanced Database Management Systems' and E.CourseNo = C.CourseNo and S.SSN = E.SSN;

/*Query 2*/

Select C.CourseName, Count(*) as Total
From Course as C, Section as SE
Where C.CourseNo = SE.CourseNo
Group By C.CourseName
Having Total > 2;


/*Query 3*/

Select C.CourseNo, C.CourseName, E.SectionNo
From Enrolls as E,Course as C
Where E.CourseNo = C.CourseNo
Group By E.CourseNo
Having Count(*) >=3;

/*Query 4*/

Select S.SSN, S.FirstName, S.Lastname
From Student as S, Takes as T
Where T.Result = 'A'and S.SSN = T.SSN
Group By  T.SSN
Having Count(*) >= 3;

/*Query 5*/
Select E.ExamNo, E.E_Date, E.CourseNo, E.SectionNo, CI.RoomNo, CR.Capacity
From Exam as E, ClassRoom as CR, ConductedIn as CI
Where CI.Building = 'SQU' and CI.Building = CR.Building and CI.RoomNo = CR.RoomNo 
and CI.CourseNo = E.CourseNo and CI.ExamNo = E.ExamNo and CI.SectionNo = E.SectionNo;

/*Query 6*/

 select distinct S.SSN, S.FirstName, S.LastName 
 from Student  S 
 join Enrolls E on E.SSN = S.SSN and E.CourseNo = 'CSC 133' 
 join Enrolls E2 on E2.SSN = E.SSN and E2.CourseNo = 'CSC 137';


/*Query 7*/
Select S.SSN, S.FirstName, S.LastName, SE.SectionNo, SE.Instructor
From Student as S, Enrolls as E, Section as SE, Course as C
Where C.CourseName = 'Data structure and Algorithms' and C.CourseNo = SE.CourseNo 
and E.SectionNo = SE.SectionNo and SE.CourseNo = E.CourseNo and E.SSN = S.SSN;