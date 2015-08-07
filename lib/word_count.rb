class String
  define_method(:word_count) do |target_word|
    word_count_array = self.split(" ")

    target_count = 0

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