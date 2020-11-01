require 'yaml'

class Library
attr_accessor :library

    def initialize
        @library = YAML.load_file('./lib/library.yaml')
    end

    def new_visitor
        @visitor = Visitor.new(owner: self)
    end

    def search_title(title)
        library.select { |obj| obj[:item][:title].include? title }
    end

    def is_available?
        library.select { |obj| obj[:available] == true }
    end
end