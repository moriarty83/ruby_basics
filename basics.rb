
# 1.
puts "hello world"

# 2.
adjective = "Big Bad"

puts "Hello #{adjective} World"

# 3.

hello_world = "Hello World"

puts hello_world.upcase


#############################
## Nums Array and Enumerables
#############################

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

# 1.
puts "unique nums #{nums.uniq}\n\n"

# 2.
nums.push(5)

puts "nums after push #{nums}\n\n"

nums.pop()

puts "nums after pop #{nums}\n\n"

nums.shift

puts "nums after shift #{nums}\n\n"

nums.unshift(5)

puts "nums after unshift #{nums}\n"

puts "nums length = #{nums.length}"

# 3.
puts "nums includes 8: #{nums.include?(8)}"

# 4.
puts "nums over 10: #{nums.find_all{|i| i > 10}}"

# 5.
puts "nums all > 0: #{nums.all?{ |i| i>0}}"

# 6.
puts "nums divisible by 8: #{nums.any?{|i| i>0 && i%8 == 0}}"

# 7.
puts "count of nums > 4: #{nums.count{|i| i>4}}"

# 8
# Note: I didn't like having this function print each on its on line so I assigned it to a varaible to make the out put prettier.
product = []
nums.each_with_index do |ele,index|
    
    product.push(ele*index)
end
puts "product of index and element: #{product}"

# 9.
puts "num divisable by 7 & 5: #{nums.find{|i|i% 7 == 0 && i % 5 == 0}}"

# 10.
puts "Index of num divisable by 7 & 5: #{nums.find_index(nums.find{|i| i != 0 && i% 7 == 0 && i % 5 == 0})}"

# 11.
puts "first three nums: #{nums.first(3)}"

# 12.
puts "last five nums: #{nums.last(5)}"

# 13.
puts "groub by %3: #{nums.group_by{|i| i%3}}"

# 14.
puts "min max nums: #{nums.minmax()}"

# 15
puts "rejected non multiples of 3: #{nums.reject{|i|i%3==0}}"

# 16.
puts "selected multiples of 5: #{nums.select{|i| i%5==0}}"

#############################
## Color Array
#############################

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

# 1.
puts "random color: #{colors[rand(colors.length)]}"

# 2.
reverse_colors = colors.reverse.each{|i| i}
puts "reverse colors: #{reverse_colors}"

# 3.
# Question, is there a way to use .each to read directly into an array instead of using push? What's the better way to do this that I'm missing?
# THANKS FOR THE ANSWER CHRIS!
puts "Capital Colors #{colors.map{|i| i.capitalize}}"


#############################
## Methods
#############################

# 1.
def find_area height, width
    height*width
end

puts find_area(2, 4)

# 2.
nums_2 = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    new_arr = []
    arr.each{|i| new_arr.push(i*5)}
    new_arr
end

puts "multiply_each_by_five: #{multiply_each_by_five nums_2}"

#############################
## Methods With a Hash
#############################

# Hashes

book = {
    title: 'The Great Gatsby',
    author: 'F Scott Fitzgerald',
    year: 1925,
    price: 10
  }
  
  lamp = {
    type: 'reading',
    brand: 'Ikea',
    price: 25
  }
  
  table = {
    type: 'bed side',
    brand: 'Crate & Barrel',
    color: 'birch',
    price: 50
  }

  # 1.
  def print_price hash
    puts "the item costs $#{hash[:price]}"
  end

  print_price book

  # 2. 
  def print_item_sums hash_1, hash_2
    total = hash_1[:price]+hash_2[:price]
    puts "the total cost is $#{total}"
  end

  print_item_sums(lamp, book)

#############################
## Methods With a Hash
#############################

## EULER
# 1.
def euler num
    Array(1..num).sum
end

puts euler 3

# 2. 
require 'prime'
def check_prime num
    Prime.prime?(num)
end

puts check_prime 13

def get_primes num
    primes = []
    Prime.each(num) do |prime| primes.push(prime) end
    primes
end

puts get_primes 10

# 3
get_primes(10).each{|prime| puts check_prime(prime)}


#############################
## Hungry for More
#############################

# Pandigital
def pandigital(num)
    puts "num.digits = #{num.digits}"
    ## If all numbers are not unique, return false.
    if num.digits.length != num.digits.uniq.length
        return false
    end

    for i in 1..num.digits.length
        p "i = " + i.to_s
        if num.digits.count(i) != 1 
            return false
        end
    end
    return true
end

p "Running Pandigital"
p pandigital 12347865

# Word Frequency
dickens = "It was the best of times, it was the worst of times, it was the age of wisdom, it was the age of foolishness, it was the epoch of belief, it was the epoch of incredulity, it was the season of Light, it was the season of Darkness, it was the spring of hope, it was the winter of despair, we had everything before us, we had nothing before us, we were all going direct to Heaven, we were all going direct the other way--in short, the period was so far like the present period that some of its noisiest authorities insisted on its being received, for good or for evil, in the superlative degree of comparison only."

def word_freq(words)
    final_count = 0
    word = ""
    for word in words.split(" ")

    end
    p words.split(" ")
end

word_freq(dickens)