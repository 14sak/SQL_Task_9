-- TASK 9 : You need to create 6 regex operation example in you own data	


--1.Get data of case number that have starts with C.A. No.-000 with different years 
select * from players 
select case_number from players where case_number like 'C.A. No.-000%'
select case_number from players where case_number ~* '^C.A. No.-000[0-9]{3}-000[0-9]{3} - [0-9]{4}$'



--2. Get data of appearance_id that starts with 223 followed by digits that contain digits between 1 to 6
	--and last 5 digits contain digits from 2 to 9
select * from players 
select appearance_id from players where appearance_id like '223%'
select appearance_id from players where appearance_id ~* '^223[1-6]{4}_[2-9]{5}$'


	
--3.Get data of game_id that begins with 22 then 2  digits between 0 to 4 
   --then 2 digits contain 5 to 8  and ends with 8
select * from players
select game_id::varchar from players where game_id::varchar like '22%'
select game_id::varchar from players where game_id:: varchar ~* '^22[0-4]{2}[5-8]{2}8$'



--4.get data of exe_number from players where it contains 50 in the beginning and shows data of different years
select * from players
select exe_number from players where exe_number like '50%'
select exe_number from players where exe_number ~* '^50[0-9]{2}-[0-2]{2}[0-9]{2}$'


	
--5.get data where players id that starts from 58,then 1 or 2 and then any number from 0-9
select * from players  
select player_id::varchar from players where player_id:: varchar like '58%'
select player_id::varchar from players where player_id:: varchar ~* '^58[1-2][0-9]{2}$'




--6. Get data of competition_id which begings between F to U and ends between H to S 
select * from players  
select distinct competition_id from players
select competition_id from players where competition_id ~* '^[f-u][a-z]{2}[h-s]$'

 