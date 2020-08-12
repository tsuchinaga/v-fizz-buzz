# v fizz buzz
V言語でテストファーストのFizzBuzzをやる

## テスト結果

### 成功する v test -stats
```
$ v -stats test .
--------------------------------------------------------------------------------------------- Testing... -------------------------------------------------------------------------------------------
checker summary: 0 V errors, 0 V warnings
compilation took: 1119 ms
running tests in: D:Projects    suchinaga
-fizzbuzz
izzbuzz_test.v
     OK   [1/5]     0.001 ms     1 assert  | main.test_fizz_buzz_arg1()
     OK   [2/5]     0.000 ms     1 assert  | main.test_fizz_buzz_arg2()
     OK   [3/5]     0.000 ms     1 assert  | main.test_fizz_buzz_arg3()
     OK   [4/5]     0.000 ms     1 assert  | main.test_fizz_buzz_arg5()
     OK   [5/5]     0.000 ms     1 assert  | main.test_fizz_buzz_arg15()
                    1.068 ms <=== total time spent running V tests in "D:Projects       suchinaga
-fizzbuzz
izzbuzz_test.v"
                 ok, fail, skip, total =     5,     0,     0,     5
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     1176.966 ms <=== total time spent running V _test.v files
                 ok, fail, skip, total =     1,     0,     0,     1
```

### 失敗する v test
```
$ v test .
--------------------------------------------------------------------------------------------- Testing... -------------------------------------------------------------------------------------------
FAIL 1070.635 ms .\fizzbuzz_test.v
D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:5: failed assert in function test_fizz_buzz_arg1
Source  : `main.main.fizz_buzz(1) == '1'`
         left value: *unknown value* <= `main.main.fizz_buzz(1)`
        right value: 1 <= `'1'`

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:10: failed assert in function test_fizz_buzz_arg2
Source  : `main.main.fizz_buzz(2) == '2'`
         left value: *unknown value* <= `main.main.fizz_buzz(2)`
        right value: 2 <= `'2'`

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:15: failed assert in function test_fizz_buzz_arg3
Source  : `main.main.fizz_buzz(3) == 'Fizz'`
         left value: *unknown value* <= `main.main.fizz_buzz(3)`
        right value: Fizz <= `'Fizz'`

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:20: failed assert in function test_fizz_buzz_arg5
Source  : `main.main.fizz_buzz(5) == 'Buzz'`
         left value: *unknown value* <= `main.main.fizz_buzz(5)`
        right value: Buzz <= `'Buzz'`

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:25: failed assert in function test_fizz_buzz_arg15
Source  : `main.main.fizz_buzz(15) == 'FizzBuzz'`
         left value: *unknown value* <= `main.main.fizz_buzz(15)`
        right value: FizzBuzz <= `'FizzBuzz'`

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     1071.952 ms <=== total time spent running V _test.v files
                 ok, fail, skip, total =     0,     1,     0,     1
```

### 失敗する v test -stats
```
$ v -stats test .
--------------------------------------------------------------------------------------------- Testing... -------------------------------------------------------------------------------------------
checker summary: 0 V errors, 0 V warnings
compilation took: 1114 ms
running tests in: D:Projects    suchinaga
-fizzbuzz
izzbuzz_test.v

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:5: failed assert in function test_fizz_buzz_arg1
Source  : `main.main.fizz_buzz(1) == '1'`
         left value: *unknown value* <= `main.main.fizz_buzz(1)`
        right value: 1 <= `'1'`
     FAIL [1/5]     0.942 ms     1 assert  | main.test_fizz_buzz_arg1()

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:10: failed assert in function test_fizz_buzz_arg2
Source  : `main.main.fizz_buzz(2) == '2'`
         left value: *unknown value* <= `main.main.fizz_buzz(2)`
        right value: 2 <= `'2'`
     FAIL [2/5]     0.781 ms     1 assert  | main.test_fizz_buzz_arg2()

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:15: failed assert in function test_fizz_buzz_arg3
Source  : `main.main.fizz_buzz(3) == 'Fizz'`
         left value: *unknown value* <= `main.main.fizz_buzz(3)`
        right value: Fizz <= `'Fizz'`
     FAIL [3/5]     1.255 ms     1 assert  | main.test_fizz_buzz_arg3()

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:20: failed assert in function test_fizz_buzz_arg5
Source  : `main.main.fizz_buzz(5) == 'Buzz'`
         left value: *unknown value* <= `main.main.fizz_buzz(5)`
        right value: Buzz <= `'Buzz'`
     FAIL [4/5]     0.763 ms     1 assert  | main.test_fizz_buzz_arg5()

D:\\Projects\\tsuchinaga\\v-fizzbuzz\\fizzbuzz_test.v:25: failed assert in function test_fizz_buzz_arg15
Source  : `main.main.fizz_buzz(15) == 'FizzBuzz'`
         left value: *unknown value* <= `main.main.fizz_buzz(15)`
        right value: FizzBuzz <= `'FizzBuzz'`
     FAIL [5/5]     0.793 ms     1 assert  | main.test_fizz_buzz_arg15()
                    5.913 ms <=== total time spent running V tests in "D:Projects       suchinaga
-fizzbuzz
izzbuzz_test.v"
                 ok, fail, skip, total =     0,     5,     0,     5
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     1181.394 ms <=== total time spent running V _test.v files
                 ok, fail, skip, total =     0,     1,     0,     1
```
