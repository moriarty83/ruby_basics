puts "hello world"

adjective = "Big Bad"

puts "Hello #{adjective} World"


#############################
## Nums Array and Enumerables
#############################

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

puts "unique nums #{nums.uniq}\n\n"

nums.push(5)

puts "nums after push #{nums}\n\n"

nums.pop()

puts "nums after pop #{nums}\n\n"

nums.shift

puts "nums after shift #{nums}\n\n"

nums.unshift(5)

puts "nums after unshift #{nums}\n"

puts "nums length = #{nums.length}"

puts "nums includes 8: #{nums.include?(8)}"

puts "nums over 10: #{nums.find_all{|i| i > 10}}"

puts "nums all > 0: #{nums.all?{ |i| i>0}}"

puts "nums divisible by 8: #{nums.any?{|i| i>0 && i%8 == 0}}"

puts "count of nums > 4: #{nums.count{|i| i>4}}"

product = []
nums.each_with_index do |ele,index|
    
    product.push(ele*index)
end
puts "product of index and element: #{product}"

puts "num divisable by 7 & 5: #{nums.find{|i|i% 7 == 0 && i % 5 == 0}}"

puts "Index of num divisable by 7 & 5: #{nums.find_index(nums.find{|i| i != 0 && i% 7 == 0 && i % 5 == 0})}"

puts "first three nums: #{nums.first(3)}"

puts "last five nums: #{nums.last(5)}"

puts "groub by %3: #{nums.group_by{|i| i%3}}"

puts "min max nums: #{nums.minmax()}"

puts "rejected non multiples of 3: #{nums.reject{|i|i%3==0}}"

puts "selected multiples of 5: #{nums.select{|i| i%5==0}}"

#############################
## Color Array
#############################

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

puts "random color: #{colors[rand(colors.length)]}"

reverse_colors = colors.reverse.each{|i| i}
puts "reverse colors: #{reverse_colors}"

capital_colors = [] 
colors.each{|i| capital_colors.push(i.capitalize)}
puts "capital colors: #{capital_colors}"

#############################
## Methods
#############################

def find_area height, width
    height*width
end

puts find_area(2, 4)

nums_2 = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five arr
    new_arr = []
    arr.each{|i| new_arr.push(i*5)}
    new_arr
end

puts "multiply_each_by_five: #{multiply_each_by_five nums_2}"
