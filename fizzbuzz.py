# coding: utf-8 #

def fizzbuzz(number):
    if number % 15 == 0:  # number % 5 == 0 and number % 3 == 0
        return "FizzBuzz"
    elif number % 5 == 0:
        return "Buzz"
    elif number % 3 == 0:
        return "Fizz"
    else:
        return str(number)

if __name__ == '__main__':
    number = int(raw_input("Please enter an integer: "))
    print fizzbuzz(number)
    # for n in range(1,100):
    #     print fizzbuzz(n)
