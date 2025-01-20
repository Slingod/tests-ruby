def echo(greet)
	greet
  end
  
  def shout(maj)
	maj.upcase
  end
  
  def repeat(mot1, n1 = 2)
	[mot1] * n1 * ' '
  end
  
  def start_of_word(mot2, n2)
	mot2[0, n2]
  end
  
  def first_word(mot3)
	mot3.split.first
  end
  
  def titleize(mot4)
	little_words = %w(and the over)
	words = mot4.split.map.with_index do |word, index|
	  if index == 0 || !little_words.include?(word)
		word.capitalize
	  else
		word
	  end
	end
	words.join(' ')
  end  