# Pewlett Hackard Analysis


## Overview:


The purpose of this analysis is to determine the number of retirement eligible employees, the number of positions that will need to be filled after those employees retire, and the number of mentorship eligible employees that could be hired back part-time from those retiring to train new employees.  This analysis used the relational database system PostgresQL and the pgAdmin 4 interface to query employee information from six csv files of employee data: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv.  The information in the csv files was transferred to tables of the same name and given primary and foreign keys to enable further queries.  From the given information the number of retirement eligible employees was determined by creating the retirement_titles table through a query returning employees born between January 1,1952 and December 31, 1955. Employees with more than one title were corrected for in the unique_titles table with the most recent title being used. Numbers of employees retiring by title was determined by using the COUNT function on the unique_titles table to create the retiring_titles table, later exported as a csv file. A list of mentorship eligible employees was created with a query of the original Employees table, Department Employee table, and Titles table to return a list of prospective mentors born between January 1,1965 and December 31, 1965.  The original csv files and tables that were later exported as csv files are available in the Data folder. The retirement_titles file can be found here: https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Data/retirement_titles.csv. The retiring_titles file can be found here:https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Data/retiring_titles.csv The queries used to create the new tables are available here:https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Queries/Employee_Database_challenge.sql



## Results: 


### Retirement Titles and Mentorship Eligibility


* a) 90,398 current employees are eligible for retirement.  
  ![retiring_titles](https://user-images.githubusercontent.com/78699521/116787406-aa8ad000-aa58-11eb-9a30-14920abd743c.png)
     
* b) By title, Senior Engineers and Senior Staff have the most retirement elegible employees at 29,414 and 28,254 respectiviely. 
* c)1,549 of retirement eligible employees are also eligible to be hired back part-time to train new employees in the mentorship program
  ![query_mentorship_eligibility](https://user-images.githubusercontent.com/78699521/116787492-27b64500-aa59-11eb-87db-3911ca6f2ef5.png)

* d) The number of mentors is substantially less then the number of new employees that will need to be hired.


## Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."


* #### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
  There is a potential that 90,398 roles will need to be filled as current employees retire. Of those roles, 1,549 retirees could be hired back part-time through the mentorship program to train new employees.  Senior Engineers and Senior Staff will have the most roles to fill by title.    


* #### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    
    
    There are not enough qualified, retirement-ready employees in the departments to mentor the next generation of PH employees.  

### Additional Query or Table


### Additional Query or Table
