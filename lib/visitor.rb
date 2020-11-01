require 'yaml'
require 'date'
#require 'pry'

class Visitors

    attr_accessor :library

    def initialize(attrs = {})
        @library = YAML.load_file('./lib/library.yaml')
    end

    def borrow_book
        library = YAML.load_file('./lib/library.yaml')
        library[0][:available] = false
        library[0][:return_date] = Date.today >> 1
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[0]
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


