class Calculator
	def add(n1, n2)
	  n1 + n2
	end
  
	def subtract(n3, n4)
	  n3 - n4
	end
  
	def sum(array)
	  array.reduce(0, :+)
	end
  
	def multiply(n5, n6)
	  n5 * n6
	end
  
	def power(n7, n8)
	  n7 ** n8
	end
  
	def factorial(n9)
	  (1..n9).reduce(1, :*)
	end
  end