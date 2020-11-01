require 'yaml'
#require 'date'

class Library
attr_accessor :library, :exp_date

    def initialize
        @library = YAML.load_file('./lib/library.yaml')
    end

end