HW_5 / GIT Homework 1
Все шаги сценария выполняйте в терминале GitBush, Terminal, в папке под гитом.

JSON
1. Создать внешний репозиторий c названием JSON.     https://github.com  -> Create a new repository. 
2. Клонировать репозиторий JSON на локальный компьютер:   	git clone https://github.com/Vadim1189/JSON.git  3. Внутри локального JSON создать файл “new.json”:
	 cd JSON
 touch new.json
4. Добавить файл под гит: git add new.json
5. Закоммитить файл.:  git commit -m "file created"
6. Отправить файл на внешний GitHub репозиторий: git push
7. Отредактировать содержание файла “new.json” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате JSON:		
$ vim new.json
заполняем данные:
{
	"first_name":"Vadim",
	"second_name":"Marchenko",
	"midle_name":"Alexandrovich",
	"number_of_pets":0,
	"salary":3000
}
 8. Отправить изменения на внешний репозиторий: 	
git commit -m " added up-to-date information "	
git push
12. Создать файл preferences.json 
13. В файл preferences.json добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате JSON.
$ vim preferences.json 							
заполняем данные:
{
"favorite_movie":"It's a Wonderful Life(1946)",
"favorite_series":"Rick and Morty",
"favorite_food":"pasta",
"favorite season":"summer",
"country_would_like_to_visit":"USA"
}
14. Создать файл sklls.json добавить информацию о скиллах которые будут изучены на курсе в формате JSON
$ vim skills.json
заполняем данные:
{
  "Management": ["TestRail", "Qase"],
  "Bug Tracking Systems": "Jira",
  "API Testing Tools": [ "Postman", "SoapUI"],
  "GitBush" : "Terminal",
  "GitHub" : "Work with branches",
  "DevTools":["Chrome","Firefox"],
  "SQL" : ["CRUD","Join","COUNT"],
  "Mobile testing": ["AndroidStudio"],
  "Sniffers":["Fiddler","Charlers"]
}
 15. Отправить сразу 2 файла на внешний репозиторий:			 
git add -a
git commit  -a -m " added up-to-date information"								
git push
 16. На веб интерфейсе создать файл bug_report.json. 
https://github.com/Vadim1189/JSON -> Add file -> Create new file 
 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе.  
-> Commit new file
 18. На веб интерфейсе модифицировать файл bug_report.json, добавить баг репорт в формате JSON.
https://github.com/Vadim1189/JSON/blob/main/bug_report.json ->       Edit this file
{
  "Summary": "App [Skyeng] shows error message (Connection error has occurred) when internet is connected",
  "Description": {
    "Steps to reproduce": "1. Tap  Skyeng icon  2. Tap (Слова которые пора повторить),  3. Сomplete tasks by tapping the correct answers",
    "Expected Results": "after completing the task with the word that you learn, a window appears with the next task with new word",
    "Actual Results": "after completing several tasks, showing error message (Connection error has occurred. Please check internet connection and try again later). Button [Retry] doesn’t help to solve the problem, since it doesn't find a connection.",
    "Reproducibility": "often",
    "Environment": "Native application Skyeng, App version: 9.55.0 (555) SDK 6.4, Android version 11, Model name: Samsung Galaxy A51, Model number SMA515FDSM,"
  }
}
 19. Сделать Commit changes (сохранить) изменения на веб интерфейсе. 
-> Commit changes
 20. Синхронизировать внешний и локальный репозиторий JSON: git pull
git pull
git fetch  
//Команда git fetch связывается с удалённым репозиторием и забирает из него все изменения,
//которых у вас пока нет и сохраняет их локально. 
 



XML
 21. Создать внешний репозиторий c названием XML.    https://github.com  -> Create a new repository.
 22. Клонировать репозиторий XML на локальный компьютер: 
git clone https://github.com/Vadim1189/XML.git 
 23. Внутри локального XML создать файл “new.xml”: touch new.xml  			
 24. Добавить файл под гит: git add new.xml
 25. Закоммитить файл. : git commit new.xml -m " file created"		
 26. Отправить файл на внешний GitHub репозиторий: git push
 27. Отредактировать содержание файла “new.xml” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате XML.
vim new.xml
заполняем данные:
<?xml version="1.0" encoding="UTF-8" ?>
<first_name>Vadim</first_name>
<second_name>Mar</second_name>
<midle_name>Alexandrovich</midle_name>
<number_of_pets>0</number_of_pets>
<salary>3000</salary>
28. Отправить изменения на внешний репозиторий.  
git add new.xml
git commit -m " added up-to-date information "
 29. Создать файл preferences.xml: touch preferences.xml
 30. В файл preferences.xml добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате XML.
$ vim preferences.xml
заполняем данные:
<?xml version="1.0" encoding="UTF-8" ?>
<favorite_movie>It's a Wonderful Life(1946)</favorite_movie>
<favorite_series>Rick and Morty</favorite_series>
<favorite_food>pasta</favorite_food>
<favorite_season>summer</favorite_season>
<country_would_like_to_visit>USA</country_would_like_to_visit>
 31. Создать файл sklls.xml добавить информацию о скиллах которые будут изучены на курсе в формате XML
vim skills.xml
заполняем данные:
<?xml version="1.0" encoding="UTF-8" ?>
<root>
	<Management>TestRail</Management>
	<Management>Qase</Management>
	<Bug Tracking Systems>Jira</Bug Tracking Systems>
	<API Testing Tools>Postman</API Testing Tools>
	<API Testing Tools>SoapUI</API Testing Tools>
	<GitBush>Terminal</GitBush>
	<GitHub>Work with branches</GitHub>
	<DevTools>Chrome</DevTools>
	<DevTools>Firefox</DevTools>
	<SQL>CRUD</SQL>
	<SQL>Join</SQL>
	<SQL>COUNT</SQL>
	<Mobile testing>AndroidStudio</Mobile testing>
	<Sniffers>Fiddler</Sniffers>
	<Sniffers>Charlers</Sniffers>
</root>
 32. Сделать коммит в одну строку: 
git add -a
git commit  -a -m " added up-to-date information"								
33. Отправить сразу 2 файла на внешний репозиторий: git push
34. На веб интерфейсе создать файл bug_report.xml. 
https://github.com/Vadim1189/XML -> Add file -> Create new file
35. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
-> Commit new file
36. На веб интерфейсе модифицировать файл bug_report.xml, добавить баг репорт в формате XML.
https://github.com/Vadim1189/XML/blob/main/bug_report.xml     ->     Edit this file
<?xml version="1.0" encoding="UTF-8" ?>

<Summary>App [Skyeng] shows error message (Connection error has occurred) when internet is connected</Summary>
<Description>
    <Steps_to_reproduce>1. Tap  Skyeng icon  2. Tap (Слова которые пора повторить),  3. Сomplete tasks by tapping the correct answers</Steps_to_reproduce>
    <Expected_Results>after completing the task with the word that you learn, a window appears with the next task with new word</Expected_Results>
    <Actual_Results>after completing several tasks, showing error message (Connection error has occurred. Please check internet connection and try again later). Button [Retry] doesn’t help to solve the problem, since it doesn't find a connection.</Actual_Results>
    <Reproducibility>often</Reproducibility>
    <Environment>Native application Skyeng, App version: 9.55.0 (555) SDK 6.4, Android version 11, Model name: Samsung Galaxy A51, Model number SMA515FDSM,</Environment>
</Description>
37. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
-> Commit changes
38. Синхронизировать внешний и локальный репозиторий XML: git pull


TXT
1.Создать внешний репозиторий c названием TXT: https://github.com  -> Create a new repository.
 2. Клонировать репозиторий TXT на локальный компьютер: git clone https://github.com/Vadim1189/TXT.git
 3. Внутри локального TXT создать файл “new.txt”: touch new.txt
 4. Добавить файл под гит: git add new.xml
 5. Закоммитить файл: git commit -am "added up-to-date information"
 6. Отправить файл на внешний GitHub репозиторий: git push
 7. Отредактировать содержание файла “new.txt” - написать информацию о себе (ФИО, возраст, количество домашних животных, будущая желаемая зарплата). Всё написать в формате TXT.
vim new.txt
заполняем данные:
first_name : Vadim,
second_name : Mar,
midle_name : Alexandrovich,
number_of_pets : 0,
salary : 5000
 8. Отправить изменения на внешний репозиторий.
git add new.txt
git commit -am " added up-to-date information "
 9. Создать файл preferences.txt
touch preferences.txt
 10. В файл preferences.txt” добавить информацию о своих предпочтениях (Любимый фильм, любимый сериал, любимая еда, любимое время года, сторона которую хотели бы посетить) в формате TXT.
vim preferences.txt
заполняем данные:
favorite_movie : It's a Wonderful Life(1946),
favorite_series : Rick and Morty,
favorite_food : pasta,
favorite season : summer,
country_would_like_to_visit : USA
 11. Создать файл skills.txt добавить информацию о скиллах которые будут изучены на курсе в формате TXT
vim skills.txt
заполняем данные:
Management: TestRail, Qase,
Bug Tracking Systems: Jira,
API Testing Tools: Postman, SoapUI,
GitBush: Termina,
GitHub: Work with branches,
DevTools: Chrome, Firefox,
SQL: CRUD, Join, COUNT,
Mobile testing: AndroidStudio,
Sniffers: Fiddler, Charlers
 12. Сделать коммит в одну строку: git commit -am "added up-to-date information"
 13. Отправить сразу 2 файла на внешний репозиторий. git push
 14. На веб интерфейсе создать файл bug_report.txt.
https://github.com/Vadim1189/TXT -> Add file -> Create new file
 15. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
-> Commit new file
 16. На веб интерфейсе модифицировать файл bug_report.txt, добавить баг репорт в формате TXT.
https://github.com/Vadim1189/TXT/blob/main/bug_report.txt     ->     Edit this file
Summary: App [Skyeng] shows error message (Connection error has occurred) when internet is connected,
  Description:
    Steps to reproduce: 1. Tap  Skyeng icon  2. Tap (Слова которые пора повторить),  3. Сomplete tasks by tapping the correct answers,
    Expected Results: after completing the task with the word that you learn, a window appears with the next task with new word,
    Actual Results: after completing several tasks, showing error message (Connection error has occurred. Please check internet connection and try again later). 
    Button [Retry] doesn’t help to solve the problem, since it doesn't find a connection.,
    Reproducibility: often,
    Environment: Native application Skyeng, App version: 9.55.0 (555) SDK 6.4, Android version 11, Model name: Samsung Galaxy A51, Model number SMA515FDSM.
 17. Сделать Commit changes (сохранить) изменения на веб интерфейсе.
-> Commit changes 
 18. Синхронизировать внешний и локальный репозиторий TXT
git pull
