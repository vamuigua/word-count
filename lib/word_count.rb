class String
   define_method(:word_count) do |user_word|
       #counter to count how many time the word appears
        counter = 0
        
       #split the sentence
        split_sentence = self.split()
        
        #for each and every word in the sentence
        split_sentence.each() do |word|
            #check if word_sentence is eql? to user_word
            if ((word.eql?(user_word)))
                counter+=1
            end
        end
        counter
    end
end
