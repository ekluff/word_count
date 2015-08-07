class String

  define_method(:word_count) do |in_string, match_case=false, whole_word=false|

    for_string = self

    in_string.downcase!() unless match_case
    for_string.downcase!() unless match_case

    case for_string
    when ''
      times_found = ''
    else
      if whole_word
        times_found = in_string.split(/\W+/).count(for_string)
      else
        times_found = in_string.scan(for_string).count
      end
    end

  end

end
