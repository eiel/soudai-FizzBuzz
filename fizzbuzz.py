int = int(raw_input("Please enter an integer: "))

def do_fizz(int):
    if (int % 3) == 0:
        return 1
    return 0

def do_buzz(int):
    if (int % 5) == 0:
        return 2
    return 0

def do_answer(fizz, buzz):
    flag = fizz + buzz
    if flag == 0:
        print int #引数に居なくても外のintを参照出来る
    elif flag == 1:
        print "Fizz"
    elif flag == 2:
        print "Buzz"
    elif flag == 3:
        print "FizzBuzz"

do_answer(do_fizz(int), do_buzz(int))
