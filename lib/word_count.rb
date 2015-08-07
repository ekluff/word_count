class String

  define_method(:word_count) do |in_string|

    in_string = in_string.downcase
    for_string = self.downcase

    case for_string
    when ''
      times_found = ''
    else
      times_found = in_string.scan(for_string).count
    end

  end

end
