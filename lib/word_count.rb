class String
  define_method(:word_count) do |target_word|
    if target_word == nil
      "What are you doing"
      else
      upcase_check_array = self.split(" ")
      target_word.downcase!()

      word_count_array = []

      target_count = 0

      upcase_check_array.each() do |upcase_word|
        down_case_word = upcase_word.downcase()
        word_count_array.push(down_case_word)
      end
    
      word_count_array.each() do |index|
        if index.include?(",")
          new_index = index.chomp(",")
          if new_index == target_word
            target_count = target_count.+(1)
          end
        else 
          if index == target_word
            target_count = target_count.+(1)
          end
        end
      end
      target_count
    end
  end
end