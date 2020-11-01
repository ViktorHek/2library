require 'yaml'
require 'date'

class Visitors

    attr_accessor :library

    def initialize(attrs = {})
        @library = YAML.load_file('./lib/library.yaml')
    end

    def borrow_book1
        library[0][:available] = false
        library[0][:return_date] = Date.today >> 1
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[0]
    end

    def borrow_book2
        library[1][:available] = false
        library[1][:return_date] = Date.today >> 1
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[1]
    end

    def borrow_book3
        library[2][:available] = false
        library[2][:return_date] = Date.today >> 1
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[2]
    end

    def return_book1
        library[0][:available] = true
        library[0][:return_date] = nil
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[0]
    end

    def return_book2
        library[1][:available] = true
        library[1][:return_date] = nil
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[1]
    end

    def return_book3
        library[2][:available] = true
        library[2][:return_date] = nil
        File.open('./lib/library.yaml', 'w') { |x| x.write library.to_yaml }
        library[2]
    end
end

