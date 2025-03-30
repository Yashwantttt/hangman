def displayer(word,user_input)
  i = 0 ;
  while i < word.length
    if user_input[i] == word[i]
      correct_letter = word[i]
      print "#{correct_letter} "      
    else
      print "_ "
    end
    i+=1
  end
end