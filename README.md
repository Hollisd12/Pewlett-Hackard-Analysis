# Pewlett-Hackard-Analysis

## Overview
Pewlett Hackard is a large company boasting several thousand employees, however, a high number of these employees are rapidly nearing retirement age. It is crucial for Pewlett Hackard to collect data on who, when, and how many people will be retiring soon so as to better prepare for the future and create a plan to fill vacant positions. 

### Purpose
Using employee data and SQL, we will create tables to determine the number of retiring employees by title and identifying employees that are eligible to participate in a mentorship program.

## Results
### The number of retiring employees by title
![retiring_titles](https://user-images.githubusercontent.com/112137694/206062575-3c3dd96b-94fe-42c8-ad4e-b6a2bf5789e1.png)
We pulled the number of retiring employees based on their birthdate being between January 1, 1952 and December 31, 1955. From our analysis, we can see that around 72,458 employees are eligible to retire soon. Of those employees, Senior Engineer holds the highest number of soon to retire employees. On the other hand, the title Manager only has 2 employees approaching retirement. This information is very useful as Pewlett can determine exactly which positions will need to be filled. From our analysis we can determine the following:
- Two senior positions have a large number of resources nearing retirement, Senior Engineers and Senior Staff. This can have a heavy impact on the company as senior and higher level staff are often harder to replace yet very valuable resources. There could be an opportunity here to promote current Engineers and Staff members within the company. Then, Pewlett Hackard could focus on highering more entry level staff.
- Although there are only two Managers approaching retirement, this position is very valuable. Managers oversee a portion of staff so their position is very important. There tends to be less managers in a company than regular staff. So, it is still important to replace these managers as well.

### Employees eligible for the mentorship program
Below is a sample of our analysis on employees who are eligible for the mentorship program.
![employees_eligible_mentorship](https://user-images.githubusercontent.com/112137694/206063609-e004af14-ce09-4762-9eca-38b962e613f5.png)
There are roughly 1,550 employees that are eligible for the mentorship program. Of these eligible employees, only 10% hold the title Staff. The other titles include Assistant Engineer, Senior Engineer, Senior Staff, and Technician Leader. 37% of the eligible employees for the mentorship hold the Senior Staff title. From this analysis, there are a few takeaways:
- The eligible employees are overall qualified to mentor the next generation
- Not all of the 1,550 employees will participate in the mentorship program. This is important because as we determined, there could be potentially 72,458 new hires/promotions while only having a max of 1,550 mentors. 

## Summary
Pewlett Hackard has roughly 73,000 employees rapidly approaching retirement age. This will definitely impact the organization. Now that Pewlett Hackard has some analysis on these soon to retire employees, they can develop a game plan to get a head of the 'silver tsunami.' The roles of the retiring employees will either need to be consolidated with other roles or replaced with new hires or promotions from within the company. It is important to keep in mind that when promoting employees, the positions they previously held will still need to be filled or consolidated. 

Additionally, a mentorship program can help Pewlett Hackard streamline the acquisition of new hires and prepare them to work well within the company. Pewlett Hackard has roughly 1,550 eligible employees for the mentorship program and a significant number of these individuals hold specialized and senior job titles. However, it is important to note that if all eligible employees joined the mentorship program, they could have potentially 72,458 employees to mentor. That is roughly 47 employees per mentor. This program alone may not be enough to handle the influx of new employees. 

There are additional queries that may help Pewlett Hackard better prepare for this mass exodus:
- Run a query to determine the departments of the mentorship eligible employees
  - This could be useful to see which departments may be lacking mentors
- Run a query on the Salaries of employees approaching retirement
  - This could be useful when determining the budget for new hires/promotions
