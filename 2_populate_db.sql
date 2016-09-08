/* Section 2 Homework
Derek Irvin

*/

/* Student Table */

insert into Student values('111-11-1111', 'John', 'Doe', '7578 Mullberry Lane', 'Sacramento', 'CA', 95629);
insert into Student values('222-22-2222', 'Jane', 'Doe', '7578 Mullberry Lane', 'Sacramento', 'CA', 95629);
insert into Student values('333-33-3333', 'Jake', 'Lake', '7578 Null Lane', 'Sacramento', 'CA', 95629);
insert into Student values('444-44-4444', 'Jenny', 'Fenny', '7578 Horse Drive', 'Sacramento', 'CA', 95629);
insert into Student values('555-55-5555', 'Adama', 'Alama', '6543 Hitchcock Road', 'Sacramento', 'CA', 95629);
insert into Student values('666-66-6666', 'Ellie', 'Jellie', '5454 Evil Court', 'Sacramento', 'CA', 95629);
insert into Student values('777-77-7777', 'Erin', 'Carin', '7578 Mullberry Lane', 'Sacramento', 'CA', 95629);
insert into Student values('888-88-8888', 'Hai', 'Bai', '7778 EightyTwo Road', 'Sacramento', 'CA', 95629);
insert into Student values('999-99-9999', 'Joe', 'Shmoe', '0666 Highway Lane', 'Sacramento', 'CA', 95629);

/* Course */

insert into Course values('CSC 133', 'Advanced Database Management Systems', 'Comp Sci');
insert into Course values('CSC 137', 'Hardware Design Language', 'Comp Sci');
insert into Course values('CSC 134', 'Object Oriented Programming', 'Comp Sci');
insert into Course values('CSC 135', 'Data structure and Algorithms', 'Comp Sci');

/*Section*/

insert into Section values('CSC 133', 1, 'John Clevenger');
insert into Section values('CSC 133', 2, 'John Clevenger');
insert into Section values('CSC 133', 3, 'John Clevenger');
insert into Section values('CSC 134', 1, 'Ying Jin');
insert into Section values('CSC 134', 2, 'Ying Jin');
insert into Section values('CSC 134', 3, 'Ying Jin');
insert into Section values('CSC 134', 4, 'Ying Jin');
insert into Section values('CSC 137', 1, 'Faroughi');
insert into Section values('CSC 137', 2, 'Faroughi');
insert into Section values ('CSC 135', 1, 'Gordon');

/* Enrolls */
insert into Enrolls values('111-11-1111', 1, 'CSC 133');
insert into Enrolls values('111-11-1111', 2, 'CSC 134');
insert into Enrolls values('111-11-1111', 1, 'CSC 135');
insert into Enrolls values('111-11-1111', 1, 'CSC 137');
insert into Enrolls values('222-22-2222', 1, 'CSC 137');
insert into Enrolls values('222-22-2222', 2, 'CSC 133');
insert into Enrolls values('333-33-3333', 1, 'CSC 135');
insert into Enrolls values('333-33-3333', 1, 'CSC 137');
insert into Enrolls values('444-44-4444', 3, 'CSC 133');
insert into Enrolls values('444-44-4444', 4, 'CSC 134');

/* ClassRoom */
insert into ClassRoom values(666, 'SQU', 45);
insert into ClassRoom values(665, 'SQU', 47);
insert into ClassRoom values(11, 'SVU', 200);
insert into ClassRoom values(222, 'SVU', 66);

/* Exam */
insert into Exam values('CSC 133', 1, 1, '2014-11-11', '08:23:00');
insert into Exam values('CSC 133', 2, 1, '2014-11-11', '09:23:00');
insert into Exam values('CSC 133', 3, 1, '2014-11-11', '10:23:00');
insert into Exam values('CSC 134', 1, 1, '2014-11-11', '08:23:00');
insert into Exam values('CSC 134', 2, 1, '2014-11-11', '09:23:00');
insert into Exam values('CSC 134', 3, 1, '2014-11-11', '10:23:00');
insert into Exam values('CSC 134', 4, 1, '2014-11-11', '11:23:00');
insert into Exam values('CSC 137', 1, 1, '2014-11-11', '08:23:00');
insert into Exam values('CSC 137', 2, 1, '2014-11-11', '09:23:00');
insert into Exam values('CSC 135', 1, 1, '2014-11-11', '08:23:00');
insert into Exam values('CSC 133', 1, 2, '2014-12-12', '08:23:00');
insert into Exam values('CSC 133', 2, 2, '2014-12-12', '09:23:00');
insert into Exam values('CSC 133', 3, 2, '2014-12-12', '10:23:00');
insert into Exam values('CSC 134', 1, 2, '2014-12-12', '08:23:00');
insert into Exam values('CSC 134', 2, 2, '2014-12-12', '09:23:00');
insert into Exam values('CSC 134', 3, 2, '2014-12-12', '10:23:00');
insert into Exam values('CSC 134', 4, 2, '2014-12-12', '11:23:00');

/* Takes */
insert into Takes values('111-11-1111', 'CSC 133', 1, 1, 'A');
insert into Takes values('111-11-1111', 'CSC 134', 2, 1, 'A');
insert into Takes values('111-11-1111', 'CSC 135', 1, 1, 'A');
insert into Takes values('111-11-1111', 'CSC 137', 1, 1, 'A');
insert into Takes values('111-11-1111', 'CSC 133', 1, 2, 'B');
insert into Takes values('222-22-2222', 'CSC 137', 1, 1, 'C');
insert into Takes values('222-22-2222', 'CSC 133', 2, 1, 'B');
insert into Takes values('333-33-3333', 'CSC 135', 1, 1, 'A');
insert into Takes values('333-33-3333', 'CSC 137', 1, 1, 'A');
insert into Takes values('444-44-4444', 'CSC 133', 3, 1, 'D');
insert into Takes values('444-44-4444', 'CSC 134', 4, 1, 'B');

/* ConductedIn */
insert into ConductedIn values(666, 'SQU', 'CSC 133', 1, 1);
insert into ConductedIn values(666, 'SQU', 'CSC 133', 2, 1);
insert into ConductedIn values(666, 'SQU', 'CSC 133', 3, 1);
insert into ConductedIn values(665, 'SQU', 'CSC 134', 1, 1);
insert into ConductedIn values(665, 'SQU', 'CSC 134', 2, 1);
insert into ConductedIn values(665, 'SQU', 'CSC 134', 3, 1);
insert into ConductedIn values(665, 'SQU', 'CSC 134', 4, 1);
insert into ConductedIn values(222, 'SVU', 'CSC 137', 1, 1);
insert into ConductedIn values(222, 'SVU', 'CSC 137', 2, 1);