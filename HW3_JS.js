//1. Написать скриптик, который 
//сосчитает и выведет результат от возведения 2 в степень 10,
// начиная со степени 1

let result = 1
let stepen = 1

while (stepen < 11) {
	result = result * 2
	console.log(result + " - это число 2 в степени: " + (stepen))
	stepen++
}

//1*. Преобразовать 1 задачу в функцию, 
//принимающую на вход степень, в которую будет возводиться число 2


// let result = 1
// let stepen = 1

const entAimStepen = function(aimStepen) {
	while (stepen <= aimStepen) {
		result = result * 2
		console.log(result + " - это число 2 в " + stepen + " степени")
		stepen++
	}
}
entAimStepen(3)

//1*.(2) Преобразовать 1 задачу в функцию, 
//принимающую на вход степень, в которую будет возводиться число 2


const getStepen = function(num) {
	return 2 ** num
}

console.log(getStepen(5))


// 2. Написать скрипт, который выведет 5 строк в консоль таким образом, чтобы в первой строчке выводилось: ), во второй: ): ) и так далее
// Пример в консоли:
//     : )
//     : ) : )
//     : ) : ) : )
//     : ) : ) : ) : )
//     : ) : ) : ) : ) : )
//2*. Преобразовать 2 задачу в функцию, принимающую на вход строку, которая и будет выводиться в консоль (как в условии смайлик), а также количество строк для вывода 
//e.g.function printSmile(stroka, numberOfRows)



let y = ""
let count1 = 1

function printSmile(stroka, numberOfRows) {
	while (count1 <= numberOfRows) {
		y = y + stroka
		console.log(y)
		count1++
	}
}
printSmile(" ^--^ ", 3)


function printSmile2(stroka, numberOfRows) {
	for (let i = 1; i <= numberOfRows; i++) {
		console.log(stroka.repeat(i))
	}
}
printSmile2("=^_^=", 5)



//3**.  Написать функцию, которая принимает на вход слово. 
//Задача функции посчитать и вывести в консоль, 
//сколько в слове гласных, и сколько согласных букв.
//e.g.function getWordStructure(word)
//В консоли:
//    Слово(word) состоит из(число) гласных и(число) согласных букв 

function getWordStructure2(word) {
	const vowels = 'aeiouy'.split(''); // split('') разбивает слово на части, помещая внтутри них то, что в ''. 
	const consonants = 'bcdfghjklmnpqrstvwxz'.split('');
	let numberOfVowesl = 0;
	let numberOfconsonantsl = 0;
	for (char of word.toLowerCase()) {
		if (vowels.includes(char)) numberOfVowesl++;
		if (consonants.includes(char)) numberOfconsonantsl++;
	}
	console.log('cлово ' + word + ' содержит ' + numberOfVowesl + ' гласных букв, и  ' + numberOfconsonantsl + ' согласных букв')

}
getWordStructure2('Vadim')
getWordStructure2('Vv')
getWordStructure2('AA')


//4 ** *:
//Преобразовать задание 3 * таким образом,
//чтобы возраст вводится используя функцию prompt в привязанной верстке  

function isPalidrom3(word) {
	word = word.toLocaleLowerCase();
	const len = word.lenght;
	console.log(len / 2);
	for (let i = 0; i < len / 2; i++) {

		if ((word[i]) !== str[len - 1 - i]) {
			return 'It is not a palindrome'
		}
	}
	return 'It is a palindrome';

}
console.log(isPalidrom3('alla'))
