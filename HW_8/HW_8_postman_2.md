## Homework 8. Postman. Part2.
#### *Here I posted my homework for learning **REST API** testing with Postman.*





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
