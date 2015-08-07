class String

  define_method(:word_count) do |in_string, match_case=false, whole_word=false|

    in_string = if match_case
      in_string
    else
      in_string.downcase
    end

    for_string = if match_case
      self
    else
      self.downcase
    end

    case for_string
    when ''
      times_found = ''
    else
      times_found = in_string.scan(for_string).count
    end

  end

end
