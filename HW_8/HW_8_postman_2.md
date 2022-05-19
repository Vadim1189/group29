## Homework 8. Postman. Part2.
### Here I posted my homework for learning **REST API** testing with Postman.

##        [162.55.220.72:5005](http://162.55.220.72:5005/first)   Endpoint /first
 
1. Отправить запрос.
2. Статус код **200** 

 ` pm.test("Status code is 200", function () {
pm.response.to.have.status(200); }); `

3. Проверить, что в **body** приходит правильный string.

` pm.test("Body matches string", function () {
pm.expect(pm.response.text()).to.include("This is the first responce from server!"); }); `
