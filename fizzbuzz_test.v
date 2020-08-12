module main

// 引数に1を入れたら1が返される
fn test_fizz_buzz_arg1() {
	assert fizz_buzz(1) == '1'
}

// 引数に2を入れたら2が返される
fn test_fizz_buzz_arg2() {
	assert fizz_buzz(2) == '2'
}

// 引数に3をいれたらfizzが返される
fn test_fizz_buzz_arg3() {
	assert fizz_buzz(3) == 'Fizz'
}

// 引数に5をいれたらbuzzが返される
fn test_fizz_buzz_arg5() {
	assert fizz_buzz(5) == 'Buzz'
}

// 引数に15をいれたらFizzBuzzが返される
fn test_fizz_buzz_arg15() {
	assert fizz_buzz(15) == 'FizzBuzz'
}
