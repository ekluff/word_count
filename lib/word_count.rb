class String

  define_method(:word_count) do |in_string|

    unless self == ""
      for_string = self.downcase
      times_found = in_string.downcase.scan(for_string).count
    end


    # if times_found > 0
    #   times_found
    # else
    #   "We could not find your word in that sentence! Please check your inputs."
    # end

  end

end
