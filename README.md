# Portfolio Project 

## Description
Through past couple of years Denmark has adapted more nationalistic views in terms of foreigners, thus leading internationals to leave the country. It is a topic close to home as I am an international in Denmark and therefore am interested in whether these decisions, that drive internationals away, are the right ones in terms of workforce, kids and other. Is danish economy actually in need of internationals and their children or not?

## Main Question: 
Are current number of births and people in workforce enough to sustain Denmark’s economy and take care of elderly citizens in 5 year-period?
### Hypothesis 1: 
People have smaller families in 2021 than any other year in a 5-year period.
### Hypothesis 2: 
Due to smaller number of births, there are less people to replace the deaths in the society.
### Hypothesis 3: 
Within coming years there will be a deficit of a workforce vs retirees.

## Scope Of Analysis

| Milestones | Timeline | Description |
| ----------- | ----------- | ----------- |
| Find non-biased data online about Danish population within 5-year period and projections after the current year. | Finished by Week 1 of the project. | Going to Statistics Denmark (statbank.dk) for public data on population, births, deaths, and projections. |
| Cleaning the data and preparing tables format to fit better with SQL and make it easy to analyse. | Finished by week 2 of the project. | Formatting data using: Microsoft Excel, there is no need to clean it as it is cleaned before given in statistics Denmark website. |
| Analysing through SQL to extract relevant data. | Finished by week 4 of the project. | Upload to SQL and analyse for needed stats and visualization purposes. |
| Visualize data in Tableau dashboards for an interactive use. | Finished by week 5 of the project. | Upload Microsoft Excel files to Tableau and create visualizations for presentation purposes. |
| Get feedback on visualizations and extracted data and apply adjustments. | Finished by week 7 of the project. | Getting feedback from people around me and seeing how visualizations can be simplified or made more accurate to the data story. Adjust and add more analysis if needed. |

## Data Used
1. Births In Denmark (https://www.dst.dk/en/Statistik/emner/borgere/befolkning/foedsler)
2. Deaths In Denmark (https://www.dst.dk/en/Statistik/emner/borgere/befolkning/doedsfald)
3. Population Projection & Projections By Age (https://www.dst.dk/en/Statistik/emner/borgere/befolkning/befolkningsfremskrivning)
4. Number Of Children Per Family (https://www.dst.dk/en/Statistik/emner/borgere/husstande-familier-og-boern/boern)

## Data Extracted And Analysis Questions

| Question | Why Are We Looking Into It | Short Answer |
| -------------- | -------------- | -------------- |
| 1. What was the number of children in Denmark in the past 5 years and how does the trend look?  | If we find that families have less children, we can look deeper into it and see what is the reason for it. | Number of children has declined with each year.|
| 2. Do people choose to have smaller families in 2021 comparing to previous 4 years? | This will help to distinguish the reason for decline. | No, it is due to lower number of families being created. |
| 3. Did number of deaths in Denmark decline or rise within last 5 years? | If there is a decline with each year we might reach the point where births don't cover deaths in society meaning that society is becoming smaller, thus affecting economy in the long-run | Deaths have increased, but there is no trend as it spikes and goes down again. |
| 4. How many births are there per one death in 2021? | Helps to understand the difference between deaths and births. | 1.11 births per one death. |
| 5. What is the trend when we look at predicted population for working age individuals (15-69)? | If workforce is prognosed to go down it indicates that more people go to be retirees than those entering the workforce. | Workforce is projected to decline. |
| 6. What is number of projected retirees in the population aged 69 - 105 plus and does it decline or rise? | Helps us to understand weather it is in fact bigger number of retirees that causes workforce to shrink. | Number of retirees is projected to grow. |
| 7. What is number of projected kids population (0-14) and is it projected to increase or decline? | Helps to understand whether new enterees into workforce will be shrinking in the upcoming years. | Number of children is projected to shrink, even though there is a projection of a small peak in 2026. |

## Excel And SQL snippets

 ### Q1 Decline of Children In Denmark (Excel)
 
<img width="359" alt="image" src="https://user-images.githubusercontent.com/105588939/168840632-4446845b-e27a-4221-a129-c0a97021dd28.png">


 ### Q2 Families (SQL)
 
[SQL Query 1](https://github.com/AistePalsgaardMacys/denmarkbirthsdeathsandeconomy/blob/00a5d7e9581aab3aabee358a1d49954efdb084b5/Query%201.sql)

 ### Q3 Number Of Births And Deaths (SQL)

[SQL Query2](https://github.com/AistePalsgaardMacys/denmarkbirthsdeathsandeconomy/blob/00a5d7e9581aab3aabee358a1d49954efdb084b5/Query%202%20births%20and%20deaths.sql)

 ### Q4 Births Per Death (Excel)
<img width="276" alt="image" src="https://user-images.githubusercontent.com/105588939/168843561-bc7b5a50-767b-4bb5-a7d0-1045c486be1e.png">

 ### Q5, Q6, Q7 Projections (SQL)
 
 [SQL Query 3](https://github.com/AistePalsgaardMacys/denmarkbirthsdeathsandeconomy/blob/00a5d7e9581aab3aabee358a1d49954efdb084b5/Query%203.sql)
 
 [SQL Query 4](https://github.com/AistePalsgaardMacys/denmarkbirthsdeathsandeconomy/blob/00a5d7e9581aab3aabee358a1d49954efdb084b5/Query4.sql)
 
 ## Answers to Hypothesis & Visualization
 
### Hypothesis 1: People have smaller families in 2021 than any other year in a 5-year period.

![Size Of Families In Denmark](https://user-images.githubusercontent.com/105588939/168847062-68f7663a-8a00-4f73-a622-2d6767ee3adc.png)

[Interactive Visualization](https://public.tableau.com/views/FamiliesInDenmark/SizeOfFamiliesInDenmark?:language=en-US&:display_count=n&:origin=viz_share_link)

People do not choose to have smaller families than in previous years. Having 2 kids was always preferred, families with other numbers of kids were always not as common, however there is a constant decrease in general number of families, thus there is a general decrease of children in Denmark.

### Hypothesis 2: Due to smaller number of births, there are less people to replace the deaths in the society.

![Dashboard 1 (1)](https://user-images.githubusercontent.com/105588939/168847537-2a141a15-4d9b-45be-8103-c86b90d699fb.png)

[Interactive Visualization](https://public.tableau.com/views/ForecastAndCurrentBirthsRetireesWorkforce/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link)

In 2021 there were approximately 1.11 births per one death, which means that each dead person is replaced by a new birth, however the births might not be the issue, the number of kids is projected to not cover number of retirees soon.

### Hypothesis 3: Within coming years there will be a deficit of a workforce vs retirees.

It is forecasted that number of retirees will grow, while workforce will decline, that might not be a problem currently, but it can change in a long-run, therefore this hypothesis should be monitored with upcoming forecasts and have some possible solutions available. ( Reference table above)









