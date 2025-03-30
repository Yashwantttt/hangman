# def wordpicker
#   file_content = File.read("words/words.txt")
#   wrd_array = file_content.split.shuffle
#   word = wrd_array[1]
#   chosen = 0
#   while chosen == 0
#     if wrd_array[1].length > 3 &&  wrd_array[1].length < 10
#       chosen = 1
#       return word
#     else
#       word = wrd_array[1]
#     end
#   end
# end
# 

def wordpicker
  file_content = File.read("words/words.txt")
  wrd_array = file_content.split.shuffle
  word = wrd_array.find { |w| w.length > 3 && w.length < 10 }
  return word || "default" # If no word is found, return a default word to avoid nil
end
