# Evaluating Happiness  
## Supervised and Unsupervised Learning Techniques Exploring the Relationship Between Values and Wellbeing  
  
### Project Overview & Motivation  

I'm curious about the relationship between the values that people hold and the way they experience the world. For this project, I'll be analyzing individuals' values and their self-rated level of happiness. Data for this project come from the 6th wave of the World Values Survey, and were collected between 2010 and 2014. Although the analytical tools I'll be using are more often utilized for prediction tasks, I'll be using common ML techniques for discovery and inference. Since I value the "why" behind the patterns I observe, I attempt techniques to reduce dimensionality and gain interpretability. 
  
### _The Data Question_  
  
1. Which aspects of values play the most important role in understanding happiness?
2. How do different approaches to exploring the relationship between values and happiness compare?
3. How do respondents from the same country answer questions on this survey? Are responses homogeneous or diverse? Do cross-country comparisons play out as expected?
  
### _The Data & Design_  
  
**What Data?** 
The World Values Survey is the primary data collection tool used in an international and longitudinal study of changing values and their impact on social and political life.  
- Over 400,000 respondents
- Data collection period currently ranges from 1981 to 2020 in 7 waves (as of May 2021)
- Includes cross-sectional samples of respondents from roughly 100 countries every few years
- For this project, I focus on wave 6 (2010-2014) data
- For more information on and access to this data set, visit https://www.worldvaluessurvey.org/WVSContents.jsp
  
**Why this wave?** I wanted sufficiently recent data with as large of an N as possible. I also wanted to exclude samples whose responses may have been influenced by the effect of COVID-19. This disqualified wave 7 data (which is planned to range from 2017-2021).

**Which Methods and Why?**  I use two supervised learning classifiers and one unsupervised learning technique to address my data questions:
- _Logistic regression_ is my first tool of choice since it's pretty straightforward and easy to interpret results. This approach helped me address data questions 1 and 2.
- In case the relationship between values and happiness is not linear, I felt that a _random forest algorithm_ could be better equipped to handle that. From there, I could rely on shapely values and partial dependency plots to make sense of the various features influencing model predictions. This method helped me address data questions 1 and 2.
- Finally, I employed _UMAP_ to see whether and how responses clustered together. This helped me approach data question 3.  
  
### _Key Insights_  
For the most part, the majority of survey respondents are pretty happy (yay!).

EDA analyses reveal early on 4 survey items moderately correlated with the happiness:
  - self-rated health
  - perceived freedom of choice
  - satisfaction with household income
  - income group (on a scale of 1 to 10)
  
These features rose to the top for both the logistic regression and random forest ensemble classifiers. When taking the recall for unhappy respondents into account, the classifier ensemble slighly outperformed the logistic regression model.  
  
Between the two models, only three expressely value-related survey items made their way onto the list of top 10 features that influence predicited happiness: importance of friends in the respondent's life (V5), whether or not the respondent values conformity (V77), views on the importance of university education for boys over girls (V52). However, a combination of expressed values (what people find important and/or identify as ideal) and respondent's recorded experiences (with poverty, safety, health, etc.) reveal three types of values that influence the likelihood that these models will classify them as unhappy or happy:
- financial and physcial security values/conditions
- companionship values/conditions
- freedom of choice and opportunity values/conditions
  
When examining whether and how respondents from the same country answered survey items in the same way, UMAP plots yielded some expected and unexpected findings. 
    
### _Where To From Here_  
[Detail other applications of work and findings in this vein]  
