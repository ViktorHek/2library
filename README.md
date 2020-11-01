# Library Challenge

## the mission
“We need an app where both the visitors and the library can see if a list of books is available, it would be nice to see both the title and the author of the book. The library needs to store these books in a file where we can easily check if a book is available or not. The library also needs the visitors to check out books after finding the title they want. Depending on the time of the checkout the library needs the books to be returned within a month and obviously, it would be nice for the visitor to know which date to return the book.”

## what it do
this i a library. we have a selection och three books. all by the same author, Tove Jansson, because you really don't need anybody else. in this library you have the ability to borrow a book which will give you information about the title, author, return-date but unfortunately not the actual book. you will also have the ability to return the book which will give you the same information but of course without the return-date.

## it's easy

1. go to irb
2. require 'yaml'

*if you are a visitor*

3. load './lib/visitor.rb'
4. 'your name' = Visitor.new
the books have a number between 1 - 3. you pick a book by choosing between
5. 'your name'.borrow_book1, 'your name'.borrow_book2 or 'your name'.borrow_book3
and you return the book with the same number
6. 'your name'.return_book1, 'your name'.return_book2 or 'your name'.return_book3

*if you are a librarian you ignore step 3-6 and type*

7. load './lib/library.rb'
8. 'your name' = Library.new
9. to check what's available you type 'your name'.is_available?
10. to search for a book you type 'your name'.search_title('the title')

## Dependencies

* Ruby
* YAML
* VS Code 
* Pry
* Rspec
* The Terminal

### shout-out
Sara Lundkvist