Assignment 12: INSERT INTO "STUDENT" ("KNOWLEDGE") VALUES ('SQL')

Queries on CompanyDatabase, table: "Employees"

1) Select  all columns for all employees:

nando@/tmp:CompanyDatabase> select * from "Employees";
+-------------------+---------+---------------+----------------+------------+----+
| FullName          | Salary  | JobPosition   | PhoneExtension | IsPartTime | Id |
|-------------------+---------+---------------+----------------+------------+----|
| Fernando Valiente | 55000   | Student       | 232            | Yes        | 1  |
| Gavin Stark       | 255000  | Instructor    | 111            | No         | 2  |
| Greg Knudsen      | 555000  | Instructor    | 222            | No         | 3  |
| Anthony Davis     | 444000  | Crane Man     | 999            | No         | 4  |
| Tom Brady         | 888000  | GOAT          | 888            | No         | 5  |
| Harry Potter      | 123444  | Wizard        | 111            | No         | 6  |
| Carlos Casamiro   | 1222000 | Goal vs Swiss | 465            | No         | 7  |
| Bob the Builder   | 300     | Engineer      | 212            | Yes        | 8  |
| Tony Stark        | 100000  | Iron Man      | 787            | No         | 9  |
| Tony Hawk         | 12300   | Bird Man      | 454            | No         | 10 |
+-------------------+---------+---------------+----------------+------------+----+
SELECT 10
Time: 0.009s

2) Select only the full names and phone extensions for only full-time employees:

nando@/tmp:CompanyDatabase> select "FullName", "PhoneExtension"
FROM "Employees"
WHERE "IsPartTime" = 'No';
+-----------------+----------------+
| FullName        | PhoneExtension |
|-----------------+----------------|
| Gavin Stark     | 111            |
| Greg Knudsen    | 222            |
| Anthony Davis   | 999            |
| Tom Brady       | 888            |
| Harry Potter    | 111            |
| Carlos Casamiro | 465            |
| Tony Stark      | 787            |
| Tony Hawk       | 454            |
+-----------------+----------------+

3) Insert a new part-time employee, as a software developer, with a salary of 450. Make up values for the other columns.

nando@/tmp:CompanyDatabase> INSERT INTO "Employees" ("FullName", "Salary", "JobP
osition", "PhoneExtension", "IsPartTime")
VALUES ('New Guy', 450, 'Software Developer', 111, '
Yes');


4) Update all employees that are cooks to have a salary of 500.

nando@/tmp:CompanyDatabase> UPDATE "Employees"
 SET "Salary" = 500 
 WHERE "JobPosition" = 'Cook';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
UPDATE 1
Time: 0.003s

5) Delete all employees that have the full name of "Lazy Larry".

nando@/tmp:CompanyDatabase> DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
You're about to run a destructive command.
Do you want to proceed? (y/n): y
Your call!
DELETE 1
Time: 0.004s

6) Add a column to the table: ParkingSpot as textual information that can store up to 10 characters.

nando@/tmp:CompanyDatabase> ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" TEXT;