# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	i = 0
	arr.each {|a| i += a }
	i
  # YOUR CODE HERE
end

def max_2_sum arr
	i = 0
	if arr.length() == 0
		i = 0
	elsif arr.length() == 1
		i = arr[0]		
	else
		i1 = 0
		i2 = 0

=begin
		if arr[0] > arr[1]
			i1 = arr[0]
			i2 = arr[1]
		else
			i1 = arr[1]
			i2 = arr[0]
	end
=end
		i1 = -4611686018427387902
		i2 = -4611686018427387902
		arr.each do |a|
			if i1 < a
				i2 = i1
				i1 = a
			elsif i2 < a
				i2 = a
			end
		end
		i = i1 + i2
	end
	i

  # YOUR CODE HERE
end

def sum_to_n? arr, n
	truth = false
	a = 1
	for i in arr[0..-1]
		for j in arr[a..-1]
			if n == i + j
				truth = true
			end
		end
		a += 1
	end
	truth
  # YOUR CODE HERE
end

# Part 2

def hello(name)
	"Hello, " + name
end

def starts_with_consonant? s
	truth = true
	vowels = ['a','A','e','E','i','I','o','O','u','U']
	if s.length() == 0
		truth = false
	elsif (s[0] =~ /[[:alpha:]]/) == nil
		truth = false
	else 
		vowels.each do |v|
			if v == s[0]
				truth = false
			end
		end
	end
	truth
end

def binary_multiple_of_4? s
	truth = true
	if s.length < 1
		truth = false
	elsif s.length == 1 && s != "0"
		truth = false
	elsif s[(s.length()-2)] != '0' || s[(s.length()-1)] != '0'
		truth = false
	else	s.each_char do |l|
			if l != '0' && l != '1'
				truth = false
			end
		end
	end
	truth
end

# Part 3

class BookInStock

  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
  	if isbn.length == 0
    	raise ArgumentError.new("isbn string cannot be empty")
	else
    	@isbn = isbn
	end

	if Float(price) <= 0.0
		raise ArgumentError.new("price cannot be less than zero")
	else
	    @price = Float(price)
    end
  end

  def price_as_string()
    "$" + sprintf("%.2f", @price)
  end

end