require 'yaml'
require 'date'
#require 'pry'

class Visitors

    attr_accessor :library

    def initialize(attrs = {})
        @library = YAML.load_file('./lib/library.yaml')
    end

    def borrow_book
        library[0][:available] = false
        library[0][:return_date] = Date.today >> 1
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[0]
    end

    def return_book
        library[0][:available] = true
        library[0][:return_date] = nil
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[0]
    end

    def show_available_books
        if library[:available] == true
            puts "#{:title} is available"
        else library[:available] = false
            puts "#{:title} is not available"
        end
    end

end

    # def return_book 
    #     library = YAML.load_file('./lib/library.yaml')
    #     library[0][:available] = true
    #     File.open('./lib/library.yaml', 'w') { |file| file.write library.to_yaml }
    # end 

    # def get_library
    #     library = YAML.load_file('./lib/library.yaml')
    #     library.each do |bok|
    #        if bok[:available] == true
    #           puts 'would you like to borrow #{bok[:item][:title]}'
    #        else
    #           puts 'books that\'s allready borrowed #{bok[:item][:title]'
    #        end 
    #     end
    # end

    # def show_return_date
    #     library = YAML.load_file('./lib/library.yaml')
    #     [:available] == false ? [:return_date] = Date.today >> 1
    # end

