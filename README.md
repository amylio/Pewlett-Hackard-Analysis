# Pewlett_Hackard_Analysis

Creating SQL database and using PostgreSQL and pgAdmin

## Overview of Pewlett Hackard Analysis

The purpose of this analysis was to identify the number of retiring employees by title and department, as well as current employees that may be set to retire in 10 years. In order to prepare the managers for the ***"silver tsunami"*** at Pewlett Hackard, we were asked to provide the total count of employees by department that will be retiring. This information will provide the managers with an idea of how many employees in their department would be retiring in the upcoming year and what positions would need to be backfilled. These managers are also trying to be proactive and would like to propose that a new program be created in order to retain some of these employees. 

In order to provide this information, we needed to create ERDs (Entity Relationship Diagrams) to visualize and identify the relationship of the data from (6) different files. Since not all of the information is accessible in one file, we needed to create a SQL database to combine the large datasets using `pgAdmin`. We also created queries to create new tables and SQL statements after we connected to `PostgreSQL` to "join" or "merge" information from the multiple datasets into one master table.  

![ERD](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/EmployeeDB.png)

**Data Sources**

* Combined data files can be found [here](https://github.com/amylio/Pewlett_Hackard_Analysis/tree/main/MOD7_Challenge_Submission/Data)
* SQL Queries can be found [here](https://github.com/amylio/Pewlett_Hackard_Analysis/tree/main/MOD7_Challenge_Submission/Queries)   

## Results

The overall results showed:

* 30% of current employees could potentially retire over the next 4 years. An average of 18,000 per year.

**Total Current Employees vs. Retiring Employees by Title**

![current](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/TotalCurrentEmployees.png)   **vs.**  ![currretiring](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Curr_Retiring_Title_TTL.png)

* The Development and Production department will be impacted the most representing more than half of the retiring employees.

![depttotal](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Curr_Retire_Dept_TTL.png)

* The majority of the employees that were retiring held senior-level positions.  

![currretiring](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Curr_Retiring_Title_TTL.png)

* 1,549 employees could be eligible for the mentorship program. Is this enough to support the volume of new hires?

## Summary

Based on the results, 72,458 current employees are categorized as "silver tsunami" which represents 30% of their current workforce and an average of 18,000 per year. Majority of the "retirees" hold senior-level positions which will impact Pewlett Hackard significantly, not only in having to go through the recruiting process to fill these positions, but the senior-level knowledge that these retirees will take with them as well. The Development and Production department would be impacted the most with 49% of the retiring employees currently working in these departments. 

**By Title:**

![currretiring](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Curr_Retiring_Title_TTL.png)

**By Department:**

![DeptRetire](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Curr_Retire_Dept_TTL.png)

This volume would be unmanageable on a consistent basis, especially having to backfill senior-level positions. With results like this, management determined that the company cannot afford to go through another ***"silver tsunami"***.   

In order to minimize the lost of the legacy knowledge and reduce the amount of the workforce retiring in the future, the managers wanted to propose creating a "mentorship program". This program would allow "mentorship eligible" employees to continue on a part-time basis to mentor newly hired employees. In order for the managers to pitch this idea and have the new role created, they requested for a list of employees that were identified as "mentorship eligible" to discuss the opportunity and build the proposal for the CEO. 

Are there enough qualified, retirement-ready employees in each department to support the next generation of Pewlett Hackard employees? Currently, our list identified 1,549 employees that could potentially retire in  10 years. Of this base, let's assume that only 60% would accept the opportunity, that would reduce the number of potential mentors to 929 employees. If Pewlett Hackart were to backfill only 70% of the vacancies due to budget cuts, obsolete positions, non-existing projects, etc., this would be an average of 54:1.

![mentor](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Mentorship.png)

In order to increase the number of potential mentors, we can consider adding another group of employees to the mentorship eligibility list. If we were to consider adding the population that is one year older than the current selection, this would increase the "mentorship eligible" list from 929 to 11,943 which would give you a ratio of 4:1.

![mentorship](https://github.com/amylio/Pewlett_Hackard_Analysis/blob/main/MOD7_Challenge_Submission/Images/Mentorship2yearComp.png)

In summary, the managers can take this analysis to communicate the benefits of creating a Mentorship Program. Some of the key benefits would be:

* Retaining experienced and successful employees that can transfer their knowledge to those less experienced.
* Reduce the impact of having a high volume of employees leaving in a given year.
