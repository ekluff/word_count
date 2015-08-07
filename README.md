# Word Counter

##### This website allows you to search a sentence for a particular word to see how many times it occurs. Current version released August 7, 2015.

#### By Evan Clough.

## Description

This web application contains two view that are presented to the user: a home page (index.erb) and a results page (result.erb). The home page is a form containing two text input fields which direct the user to enter a sentence and a word, respectively. Once submitted, the application searches the sentence for the word and directs the user to the results page that displays one of four possible messages stating that 1) the word was not found, 2) the word was found one time, 3) the word was found more than once (in which case it specifies the number of times), or 4) the user did not input a word.

## Setup

*This app has been deployed to Heroku. It can be accessed by visiting the URL https://secure-crag-4192.herokuapp.com/ .
*A repository containing this app can be found at https://github.com/ekluff/word_count.git .

## Technologies Used

The logic for this application is written in Ruby, and runs in Sinatra. The application contains a method named "word_count" declared on the String class that employs case switching to return, as a Fixnum, the number of instances of a substring (i.e., the word) occuring within a string (i.e., the sentence) or, if the receiver is a null set, a null set. Word_count accepts the substring as receiver and the string as parameter, as below:

  count_how_many_times_this_word_occurs.word_count(within_this_sentence)

The application uses params.fetch in file app.rb to retrieve the user input. File app.rb contains the instance variable @result_phrase, the definition of which is determined using case switching. There are four possible message types, as described above.

### Legal

Copyright (c) 2015 Evan Clough.

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
