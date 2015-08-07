class String

  define_method(:word_count) do |in_string|

    for_string = self
    times_found = in_string.scan(for_string).count

    times_found > 0

  end

end
