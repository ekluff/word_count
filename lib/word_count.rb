class String

  define_method(:word_count) do |in_string|

    puts in_string #Did the input string get input as a parameter?

    for_string = self

    puts for_string #Did the substring get assigned properly?

    times_found = in_string.scan(for_string).count

    puts in_string.scan(for_string) #Did the array of instances get created?
    puts times_found #Did the times_found variable get properly assigned?

    times_found > 0

  end

end
