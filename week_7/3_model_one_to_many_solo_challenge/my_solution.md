# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
User fields:<br>
-id<br>
-username<br>
-password<br>
-email_address<br>
-created_at<br>
-modified_at<br>

## Release 1: Tweet Fields
Tweet fields:<br>
-id<br>
-userid<br>
-content<br>
-created_at<br>
-modified_at<br>

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
1:N (one to many) because any given user can have multiple tweets, but each tweet can only belog to one particular user.

## Release 3: Schema Design
<img src="https://github.com/axprin/phase_0_unit_3/blob/master/week_7/imgs/Screen%20Shot%202014-05-18%20at%201.15.16%20PM.png?raw=true" alt="" /></a>

## Release 4: SQL Statements
-All the tweets for a certain user id:<br>SELECT content<br>
FROM tweets JOIN user id = userid
WHERE username = 'axprin99'<br>
<br><br>
-The tweets for a certain user id that were made after last Wednesday:<br>
SELECT content<br>
FROM tweets<br> JOIN user id = userid
WHERE username = 'axprin99'<br>
AND created_at >= 05/14/2014<br><br>

-All the tweets associated with a given user's twitter handle:<br>
SELECT content<br>
FROM tweets JOIN user id = userid<br>
WHERE username = 'axprin99'<br><br>

-The twitter handle associated with a given tweet id<br>
SELECT username<br>
FROM user JOIN tweets userid = id<br>
WHERE tweeet.id = 99999 

## Release 5: Reflection
I thought this was an interesting exercise, having to conceptualize how we presume an already existing system is structured. I thought it was really helpful to get this exposure, as it really instills the relationship between users and tweets and allows for development of data queries, which I'm sure is a going to be a huge part of our DBC experieince. I had some exposure to SQL before entering DBC, but I am convinced my skills will be dramatically honed over the next few months. 