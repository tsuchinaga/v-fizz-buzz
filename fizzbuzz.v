module main

fn main() {
	for i := 1; i <= 100; i++ {
		println(fizz_buzz(i))
	}
}

fn fizz_buzz(n int) string {
	return if n % 15 == 0 {
		'FizzBuzz'
	} else if n % 3 == 0 {
		'Fizz'
	} else if n % 5 == 0 {
		'Buzz'
	} else {
		n.str()
	}
}
