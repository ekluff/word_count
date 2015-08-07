# Word Counter

##### This website allows you to search a sentence for a particular word to see how many times it occurs. Current version released August 7, 2015.

#### By Evan Clough.

## Description

This web application contains two view that are presented to the user: a home page and a results page. The home page is a form containing two text input fields which direct the user to enter a sentence and a word, respectively. Once submitted, the application searches the sentence for the word and directs the user to the results page that displays one of three possible messages stating that 1) the word was not found, 2) the word was found one time, or 3) the word was found more than once (in which case it specifies the number of times).

## Setup

*This app has been deployed to Heroku. It can be accessed by visiting the URL https://secure-crag-4192.herokuapp.com/ .
*A repository containing this app can be found at https://github.com/ekluff/word_count.git .

## Technologies Used

The logic for this application is written in Ruby, and runs in Sinatra. The application contains a method named "word_count" that returns, as a Fixnum, the number of instances of a substring (i.e., the word) occuring within a string (i.e., the sentence). Word_count accepts the substring as an object and the string as a parameter, as below:

  count_how_many_times_this_word_occurs.word_count(within_this_sentence)

The application uses params.fetch in file app.rb to retrieve the user-input sentence and word from the form on the home page, and applies the word and sentence as receiver and parameter of method word_count, respectively. File app.rb contains the instance variable @result_phrase defined as a statement if/elsif/else that tests if the method word_count returned Fixnum equals 0 or 1 and returns the gramatically appropriate phrase then displayed on the result page to which the user is directed.

### Legal

*{This is boilerplate legal language. Read through it, and if you like it, use it. There are other license agreements online, but you can generally copy and paste this.}*

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
