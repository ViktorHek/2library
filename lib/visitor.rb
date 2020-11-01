require 'yaml'
require 'date'
require 'pry'

class Visitors

    attr_accessor :library, :title, :author, :available, :return_date

    def initialize
        @library = YAML.load_file('./lib/library.yaml')
        @library = get_library(attrs[:library])
    end
    
    def borrow_book(library)
        # @library = YAML.load_file('./lib/library.yaml')
        # @library[1][:available] = false
        # @library[0][:return_date] = Date.today>>1
        # File.open('./lib/library.yaml', 'w') { |file| file.write library.to_yaml }
    end


    # def return_book 
    #     library = YAML.load_file('./lib/library.yaml')
    #     library[0][:available] = true
    #     File.open('./lib/library.yaml', 'w') { |file| file.write library.to_yaml }
    # end

end



