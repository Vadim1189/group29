Here I posted my homework for learning REST API testing with Postman
# Homework 8. Postman. Part2. 
<br>




<br>


  ##        [Сервер 162.55.220.72:5005](http://162.55.220.72:5005/first)   Endpoint /first
 
1. Отправить запрос.
2. Статус код **200** 
 ``` js
 pm.test("Status code is 200", function () {
pm.response.to.have.status(200); }); 
```

3. Проверить, что в **body** приходит правильный string.
``` js
pm.test("to.have.body", function () {
pm.expect(pm.response.text()).to.include("This is the first responce from server!"); });
```
или
``` js
pm.test("to.have.body", function () {
    pm.response.to.have.body("This is the first responce from server!");
```
---

<br>




<br>

##        [Сервер 162.55.220.72:5005](http://162.55.220.72:5005/user_info_3 )   Endpoint /user_info_3 



1. Отправить запрос
2. Статус код **200**   
``` js
 pm.test("Status code is 200", function () {
    pm.response.to.have.status(200); }); 
```

3. Спарсить response **body** в json.   
``` js
const jsonData = pm.response.json(); 
```
4. Проверить, что name в ответе равно **name s request** (name вбить руками.)
``` js
pm.test("check_name", function () {
    pm.expect(jsonData.name).to.eql("Oleg")
});
```
5. Проверить, что age в ответе равно **age s request** (age вбить руками.)  
``` js 
pm.test("check_age", function () {
    pm.expect(jsonData.age).to.eql("32")
});
```

6. Проверить, что salary в ответе равно **salary s request** (salary вбить рукteами.)
``` js
pm.test("check_salary", function () {
    pm.expect(jsonData.salary).to.eql(3800)
});
```

7. Спарсить **request**.
``` js
let req = request.data
```

8. Проверить, что name в ответе равно **name s request** (name забрать из request.)
``` js
pm.test("compare name", function () {
    pm.expect(jsonData.name).to.eql(req.name)
});
```

9. Проверить, что age в ответе равно **age s request** (age забрать из request.)
``` js
pm.test("compare age", function () {
    pm.expect(jsonData.age).to.eql(req.age)
});
```

10. Проверить, что salary в ответе равно **salary s request** (salary забрать из request.)
``` js
pm.test("compare salary", function () {
    pm.expect(+jsonData.salary).to.eql(+req.salary)
});
```

11. Вывести в консоль параметр **family из response**.    
``` js
console.log(jsonData.family)
```

12. Проверить что **u_salary_1_5_year** в ответе равно **salary*4** (salary забрать из request)   
``` js
pm.test("compare_u_salary_1_5_year", function () {
    pm.expect(+jsonData.family.u_salary_1_5_year).to.equal(req.salary * 4)
});
```

---
<br>




<br>


## [Сервер 162.55.220.72:5005](http://162.55.220.72:5005/object_info_3)   Endpoint /object_info_3


1. Отправить запрос.
`http://162.55.220.72:5007/object_info_3?name=Oleg&age=32&salary=3800`

2. Статус код 200
``` js
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
3. Спарсить response body в json.
``` js
resp = pm.response.json();
```

4. Спарсить request.
``` js
req = pm.request.url.query.toObject();
```
5. Проверить, что name в ответе равно name s request (name забрать из request.)
``` js
pm.test("compare_name", function () {
    pm.expect(resp.name).to.eql(req.name);
});
```

6. Проверить, что age в ответе равно age s request (age забрать из request.)
``` js
pm.test("compare_age", function () {
    pm.expect(resp.age).to.eql(req.age);
});
```

7. Проверить, что salary в ответе равно salary s request (salary забрать из request.)
``` js
pm.test("compare_salary", function () {
    pm.expect(+resp.salary).to.eql(+req.salary);
});
```

8. Вывести в консоль параметр family из response.
``` js
console.log(resp.family)
```

9. Проверить, что у параметра dog есть параметры name.
``` js
pm.test("dog_has_property_name", function () {
    pm.expect(resp.family.pets.dog).to.have.property("name");
});
```
10. Проверить, что у параметра dog есть параметры age.
``` js
pm.test("dog_has_property_age", function () {
    pm.expect(resp.family.pets.dog).to.have.property("age");
});
```
11. Проверить, что параметр name имеет значение Luky.
``` js
pm.test("param name equal Luky", function () {
    pm.expect(resp.family.pets.dog.name).to.eql("Luky");
});
```
12. Проверить, что параметр age имеет значение 4.
``` js
pm.test("param age equal 4", function () {
    pm.expect(resp.family.pets.dog.age).to.eql(4);
});
```
---
<br>




<br>

## [Сервер 162.55.220.72:5005](http://162.55.220.72:5005/object_info_4)   Endpoint /object_info_4


1. Отправить запрос.
`http://162.55.220.72:5005/object_info_4?name=Oleg&age=32&salary =3800`

2. Статус код 200
``` js
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
3. Спарсить response body в json.
``` js
const resp = pm.response.json();
```

4. Спарсить request.
``` js
const req1 = pm.request.url.query.toObject();
```
5. Проверить, что name в ответе равно name s request (name забрать из request.)
``` js
pm.test("compare name", function () {
    pm.expect(resp.name).eql(req1.name);
});
```
6. Проверить, что age в ответе равно age из request (age забрать из request.)
``` js
pm.test("compare age", function () {
    pm.expect(resp.age).eql(+req1.age);
});
```
7. Вывести в консоль параметр salary из request.
``` js
console.log(req1.salary);
```
8. Вывести в консоль параметр salary из response.
``` js
console.log(resp.salary);
```
9. Вывести в консоль 0-й элемент параметра salary из response.
``` js
console.log(resp.salary[0]);
```

10. Вывести в консоль 1-й элемент параметра salary параметр salary из response.
``` js
console.log(resp.salary[1]);
```

11. Вывести в консоль 2-й элемент параметра salary параметр salary из response.
``` js
console.log(resp.salary[2]);
```
12. Проверить, что 0-й элемент параметра salary равен salary из request (salary забрать из request.)
``` js
pm.test("compare salary", function () {
    pm.expect(+resp.salary[0]).eql(+req1.salary);
});
```
13. Проверить, что 1-й элемент параметра salary равен salary*2 из request (salary забрать из request.)
``` js
pm.test("compare salary", function () {
    pm.expect(+resp.salary[1]).eql(req1.salary*2);
});
```
14. Проверить, что 2-й элемент параметра salary равен salary*3 из request (salary забрать из request.)
``` js
pm.test("compare salary", function () {
    pm.expect(+resp.salary[2]).eql(+req1.salary*3);
});
```

15. Создать в окружении переменную name
``` js
const nameResp = resp.name;
```
16. Создать в окружении переменную age
``` js
const ageResp = resp.age;
```
17. Создать в окружении переменную salary
``` js
const salaryResp = resp.salary;
```
18. Передать в окружение переменную name
``` js
pm.environment.set("nameRespEnv",nameResp);
```
19. Передать в окружение переменную age
``` js
pm.environment.set("ageRespEnv",ageResp);
```
20. Передать в окружение переменную salary
``` js
pm.environment.set("salaryRespEnv",salaryResp[0]);
```

21. Написать цикл который выведет в консоль по порядку элементы списка из параметра salary.
``` js
for (let i = 0; i<resp.salary.length; i++) {
    console.log(resp.salary[i] + " test");
};
```
или
``` js
for (let i in resp.salary){
    console.log(i, resp.salary[i])
}
```
<br>



<br>

---

## [Сервер 162.55.220.72:5005](http://162.55.220.72:5005/user_info_2)   Endpoint /user_info_2



1. Вставить параметр salary из окружения в request 
`{{salaryRespEnv}}`
2. Вставить параметр age из окружения в age
`{{ageRespEnv}}`
3. Вставить параметр name из окружения в name
`{{nameRespEnv}}`
4. Отправить запрос.
5. Статус код 200
``` js
pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);
});
```
6. Спарсить response body в json.
``` js
const resp = pm.response.json();
```
7. Спарсить request.
``` js
const req = request.data;
```
8. Проверить, что json response имеет параметр start_qa_salary
``` js
pm.test("have_prop_qa_salary_after_6_months", function () {
    pm.expect(resp).to.have.property("start_qa_salary");
});
```
9. Проверить, что json response имеет параметр qa_salary_after_6_months
``` js
pm.test("have_prop_qa_salary_after_6_months", function () {
    pm.expect(resp).to.have.property("qa_salary_after_6_months");
});
```
10. Проверить, что json response имеет параметр qa_salary_after_12_months
``` js
pm.test("have_prop_qa_salary_after_12_months", function () {
    pm.expect(resp).to.have.property("qa_salary_after_12_months");
});
```
11. Проверить, что json response имеет параметр qa_salary_after_1.5_year
``` js
pm.test("have_prop_qa_salary_after_1.5year", function () {
   pm.expect(resp).to.have.property("qa_salary_after_1.5_year");
});
```
12. Проверить, что json response имеет параметр qa_salary_after_3.5_years
``` js
pm.test("have_prop_qa_salary_after_3.5year", function () {
   pm.expect(resp).to.have.property("qa_salary_after_3.5_years");
});
```
13. Проверить, что json response имеет параметр person
``` js
pm.test("have_prop_person", function () {
   pm.expect(resp).to.have.property("person");
});
```
14. Проверить, что параметр start_qa_salary равен salary из request (salary забрать из request.)
``` js
pm.test("compare start_qa_salary", function () {
    pm.expect(+resp.start_qa_salary).eql(+req.salary);
});
```
15. Проверить, что параметр qa_salary_after_6_months равен salary*2 из request (salary забрать из request.)
``` js
pm.test("compare 6m_qa_salary", function () {
    pm.expect(+resp.qa_salary_after_6_months).eql(+req.salary*2);
});
```
16. Проверить, что параметр qa_salary_after_12_months равен salary*2.7 из request (salary забрать из request.)
``` js
pm.test("compare 12m_qa_salary", function () {
    pm.expect(resp.qa_salary_after_12_months).eql(req.salary*2.7);
});
```

17. Проверить, что параметр qa_salary_after_1.5_year равен salary*3.3 из request (salary забрать из request.)
``` js
pm.test("compare 12m_qa_salary", function () {
    pm.expect(resp['qa_salary_after_1.5_year']).eql(+req.salary*3.3);
});
```

18. Проверить, что параметр qa_salary_after_3.5_years равен salary*3.8 из request (salary забрать из request.)
``` js
pm.test("compare 12m_qa_salary", function () {
    pm.expect(['resp.qa_salary_after_3.5_years']).eql(req.salary*3.8);
});
```
19. Проверить, что в параметре person, 1-й элемент из u_name равен salary из request (salary забрать из request.)
``` js
pm.test("compare_salary", function () {
    pm.expect(resp.person.u_name[1]).eql(+req.salary);
});
```
20. Проверить, что что параметр u_age равен age из request (age забрать из request.)
``` js
pm.test("compare_salary", function () {
    pm.expect(resp.person.u_age).eql(+req.age);
});
```
21. Проверить, что параметр u_salary_5_years равен salary*4.2 из request (salary забрать из request.)
``` js
pm.test("compare_u_salary_5_years", function () {
    pm.expect(resp.person.u_salary_5_years).eql((req.salary)*4.2);
});
```

22. ***Написать цикл который выведет в консоль по порядку элементы списка из параметра person.
``` js
for(let m in resp.person) {
    if(typeof(resp.person[m]) == 'object') {
        console.log(m + ':')
        for(let i = 0; i<Object.keys(resp.person[m]).length;i++) {
            console.log(resp.person[m][i])
      }
    }
    else { console.log(m + ':'+ resp.person[m])
        }
}
```
---
---


  


