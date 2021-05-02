# Pewlett Hackard Analysis


## Overview:


The purpose of this analysis is to determine the number of retirement eligible employees, the number of positions that will need to be filled after those employees retire, and the number of mentorship eligible employees that could be hired back part-time from those retiring to train new employees.  This analysis used the relational database system PostgresQL 11 and the pgAdmin 4 interface to query employee information from six csv files of employee data: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, and titles.csv.  The information in the csv files was transferred to tables of the same name.  From the given information, the number of retirement eligible employees was determined by creating the retirement_titles table through a query returning employees born between January 1,1952 and December 31, 1955. Employees with more than one title were corrected for in the unique_titles table with the most recent title being returned. Numbers of employees retiring by title was determined by using the COUNT function on the unique_titles table to create the retiring_titles table, which was later exported as a csv file. A list of mentorship eligible employees was created with a query of the original Employees table, Department Employee table, and Titles table to return a list of prospective mentors born between January 1,1965 and December 31, 1965.  The original csv files and tables that were later exported as csv files are available in the Data folder. 


The retirement_titles file can be found here: https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Data/retirement_titles.csv. 


The retiring_titles file can be found here:https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Data/retiring_titles.csv 


The queries used to create the new tables are available here:https://github.com/cmhume/Pewlett-Hackard-Analysis/blob/3de1d89dae68ac48879d53931698b3b961bb0e46/Queries/Employee_Database_challenge.sql



## Results: 


### Retirement by Title and Mentorship Eligibility of Retiring Employees


* a) 90,398 current employees are eligible for retirement. 


![image](https://user-images.githubusercontent.com/78699521/116830499-7ea64200-ab5f-11eb-932b-9e9bd46af4bb.png)
 
     
* b) By title, Senior Engineers and Senior Staff have the most retirement elegible employees at 29,414 and 28,254 respectiviely.


* c)1,549 of retirement eligible employees are also eligible to be hired back part-time to train new employees in the mentorship program.


![mentorship_eligibility](https://user-images.githubusercontent.com/78699521/116830540-d47aea00-ab5f-11eb-9474-4a417c9d2940.png)
  

* d) The number of mentors is substantially less then the number of new employees that will need to be hired after current employees retire.


## Summary: 


* #### How many roles will need to be filled as the "silver tsunami" begins to make an impact?


A total of 90,398 roles will need to be filled as current employees retire. Of those roles, 1,549 retirees could be hired back part-time through the mentorship  program to train new employees.  Senior Engineers and Senior Staff will have the most roles to fill by title.    


* #### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
    
  
There are not enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees.  As seen above in the retiring_titles table, many more employees will be retiring by title than are eligible for the mentorship program, with a total of only 1,549 employees eligible for the program.  Employees eligible for the mentorship program by title are shown below in the mentorship_info table.  This means there will only be aproximately one mentor per 99 new Senior Engineer hires, one mentor per 68 new Senior Staff hires, one mentor per 40 new Staff hires, one mentor per 59 new Technique Leader hires, one mentor per 30 new Assisstant Engineer hires, and no mentors for the two new Manager hires. Of the employees eligible for the mentorship program, 691 employees have been working for Pewlett Hackard for over 30 years, originally being hired between the years of 1985 and 1988 and changing titles as they moved up in the company over the years.  These long-term employees may be less interested in working part-time as mentors than those who have worked with the company a shorter time.      
    

##### Current employees eligible for the mentorship program after retirement, by title:


  ![mentorship_info](https://user-images.githubusercontent.com/78699521/116828213-20bf2d80-ab52-11eb-829b-9986ac25fd4c.png)


##### Current employees eligible for the mentorship program that were hired between 1985 and 1988:


  ![mentorship_hire_date](https://user-images.githubusercontent.com/78699521/116830141-e7d88600-ab5c-11eb-8d9c-8eac955b647f.png)





