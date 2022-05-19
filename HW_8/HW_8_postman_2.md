# Homework 8. Postman. Part2. 
Here I posted my homework for learning REST API testing with potman


  ##        [162.55.220.72:5005](http://162.55.220.72:5005/first)   Endpoint /first
 
1. Отправить запрос.
2. Статус код **200** 

 ` pm.test("Status code is 200", function () {
pm.response.to.have.status(200); }); `

3. Проверить, что в **body** приходит правильный string.

` pm.test("Body matches string", function () {
pm.expect(pm.response.text()).to.include("This is the first responce from server!"); }); `


##        [162.55.220.72:5005](http://162.55.220.72:5005/user_info_3 )   Endpoint user_info_3 



1. Отправить запрос
2. Статус код **200**   
` pm.test("Status code is 200", function () {
    pm.response.to.have.status(200); 
}); `
.
3. Спарсить response **body** в json.   
` const jsonData = pm.response.json(); `

4. Проверить, что name в ответе равно **name s request** (name вбить руками.)
`pm.test("check_name", function () {
    pm.expect(jsonData.name).to.eql("Oleg")
});`

5. Проверить, что age в ответе равно **age s request** (age вбить руками.)  
`pm.test("check_age", function () {
    pm.expect(jsonData.age).to.eql("32")
});`

6. Проверить, что salary в ответе равно **salary s request** (salary вбить рукteами.) ok
`pm.test("check_salary", function () {
    pm.expect(jsonData.salary).to.eql(3800)
});`


7. Спарсить **request**.
`let req = request.data`

8. Проверить, что name в ответе равно **name s request** (name забрать из request.)
pm.test("compare name", function () {
    pm.expect(jsonData.name).to.eql(req.name)
});

9. Проверить, что age в ответе равно **age s request** (age забрать из request.)
`pm.test("compare age", function () {
    pm.expect(jsonData.age).to.eql(req.age)`
});

10. Проверить, что salary в ответе равно **salary s request** (salary забрать из request.)
`pm.test("compare salary", function () {
    pm.expect(+jsonData.salary).to.eql(+req.salary)
});`

11. Вывести в консоль параметр **family из response**.    
`console.log(jsonData.family)`

12. Проверить что **u_salary_1_5_year** в ответе равно **salary*4** (salary забрать из request)   
`salary_x4 = ((+req.salary) * 4)
pm.test("compare_u_salary_1_5_year", function () {
    pm.expect(+jsonData.family.u_salary_1_5_year).to.equal(req.salary * 4)
});`



 ##        [162.55.220.72:5005](http://162.55.220.72:5005/user_info_2)   Endpoint /user_info_2


1. Вставить параметр salary из окружения в **request**
`{{salaryRespEnv}}`
2. Вставить параметр age из окружения в **age**
`{{ageRespEnv}}`
3. Вставить параметр name из окружения в **name**
`{{nameRespEnv}}`
4. Отправить запрос.
5. Статус код **200**
`pm.test("Status code is 200", function () {
    pm.response.to.have.status(200);`
});
6. Спарсить response **body** в json.
`const resp = pm.response.json();`
7. Спарсить request.
 `const req = request.data;`
8. Проверить, что json response имеет параметр start_qa_salary

`pm.test("have_prop_qa_salary_after_6_months", function () {
    pm.expect(resp).to.have.property("start_qa_salary");`
});
9. Проверить, что json response имеет параметр **qa_salary_after_6_months**

`pm.test("have_prop_qa_salary_after_6_months", function () {
    pm.expect(resp).to.have.property("qa_salary_after_6_months");
});`
10. Проверить, что json response имеет параметр **qa_salary_after_12_months**

`pm.test("have_prop_qa_salary_after_12_months", function () {
    pm.expect(resp).to.have.property("qa_salary_after_12_months");
});`


11. Проверить, что json response имеет параметр **qa_salary_after_1.5_year**

`pm.test("have_prop_qa_salary_after_1.5year", function () {
   pm.expect(resp).to.have.property("qa_salary_after_1.5_year");
});`


12. Проверить, что json response имеет параметр **qa_salary_after_3.5_years**

`pm.test("have_prop_qa_salary_after_3.5year", function () {
   pm.expect(resp).to.have.property("qa_salary_after_3.5_years");
});`


13. Проверить, что json response имеет параметр **person**

`pm.test("have_prop_person", function () {
   pm.expect(resp).to.have.property("person");
});`


14. Проверить, что параметр **start_qa_salary** равен **salary из request** (salary забрать из request.)

`pm.test("compare start_qa_salary", function () {
    pm.expect(+resp.start_qa_salary).eql(+req.salary);
});`


15. Проверить, что параметр **qa_salary_after_6_months** равен **salary*2** из request (salary забрать из request.)

pm.test("compare 6m_qa_salary", function () {
    pm.expect(+resp.qa_salary_after_6_months).eql(+req.salary*2);
});


16. Проверить, что параметр **qa_salary_after_12_months равен salary*2.7** из request (salary забрать из request.)

`pm.test("compare 12m_qa_salary", function () {
    pm.expect(resp.qa_salary_after_12_months).eql(req.salary*2.7);
});`


17. Проверить, что параметр **qa_salary_after_1.5_year** равен **salary*3.3** из request (salary забрать из request.)

`pm.test("compare 12m_qa_salary", function () {
    pm.expect(resp['qa_salary_after_1.5_year']).eql(+req.salary*3.3);
});`


18. Проверить, что параметр **qa_salary_after_3.5_years** равен **salary*3.8** из request (salary забрать из request.)

`pm.test("compare 12m_qa_salary", function () {
  pm.expect(resp.qa_salary_after_12_months).eql(req.salary*2.7);
});`


19. Проверить, что в параметре person, 1-й элемент из **u_name равен salary** из request (salary забрать из request.)

`pm.test("compare_salary", function () {
    pm.expect(resp.person.u_name[1]).eql(+req.salary);
});`


20. Проверить, что что параметр **u_age** равен age из request (age забрать из request.)

`pm.test("compare_salary", function () {
    pm.expect(resp.person.u_age).eql(+req.age);
});`


21. Проверить, что параметр **u_salary_5_years** равен salary*4.2 из request (salary забрать из request.)
`pm.test("compare_u_salary_5_years", function () {
    pm.expect(resp.person.u_salary_5_years).eql((req.salary)*4.2);
});`


22. Написать цикл который выведет в консоль по порядку элементы списка из параметра person.

`for(let m in resp.person) {
    if(typeof(resp.person[m]) == 'object') {
        console.log(m + ':')
        for(let i = 0; i<Object.keys(resp.person[m]).length;i++) {
            console.log(resp.person[m][i])
    }}
    else { console.log(m + ':'+ resp.person[m])
        }}`



