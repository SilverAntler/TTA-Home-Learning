#TASK 1: Write a R program to get the first 10 Fibonacci numbers.
#numbers are the sum of the two previous numbers

fib = function() {
  x = 1
  x = x+x
  
}

fib = function () {
  nterms = 10
  n1 = 0
  n2 = 1
  count = 2
  print (n1)
  print (n2)
  while (count <= nterms) {
    nth = n1+n2
    print (nth)
    n1 = n2
    n2 = nth
    count = count + 1
    }
  }
fib()


#TASK 2: Write a R program to print the numbers from 1 to 100
#and print "Fizz" for multiples of 3, print "Buzz" for multiples of 5, 
#and print "FizzBuzz" for multiples of both.

#fizz = function() {
  #i = c(1:100)
  #for i in i=1:100
  #if (i %% 3 == 0) i = "Fizz"
  #  print (i) 
#}

#fizz()

#fizzbuzz = function () {
 # if (i %%3 == 0)
  #{i = "Fizz"}

  #for i in range(1:100)
  #print fizzbuzz(i) }

x = c(1:100)
y = replace(x, x %%3 ==0, "yes")
print (y) # testing the approach


x= c(1:100)
y = replace (x, (x%%3 == 0, "Fizz") # This works with one word only. 
z = replace (y, y%%5 == 0, "Buzz") # error, non-numeric 
print (z)

#incomplete solution. 
