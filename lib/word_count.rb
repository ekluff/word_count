class String

  define_method(:word_count) do |in_string|

    unless self == ""
      times_found = in_string.downcase.scan(self.downcase).count
    end

  end

end
