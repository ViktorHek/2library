require 'date'
require './lib/visitor.rb'

describe Visitors do 
    let(:visitors) { instance_double('Book', title: 'En Bok', author: 'En Person', available: :true, return_date: '28/11' ) }

    it 'displays a list of books on initialize' do
        expected_output = YAML.load_file('./lib/library.yaml')
        expect(subject.library).to eq expected_output
    end

    it 'can borrow book' do
        expected_output = { :item => 0, :title => 'Trollkarlens hatt', :author => 'Tove Jansson', :available => false, :return_date => Date.today >> 1 }
        expect(subject.borrow_book).to eq expected_output
    end

    it 'can return book' do
        expected_output = { :item => 0, :title => 'Trollkarlens hatt', :author => 'Tove Jansson', :available => true, :return_date => nil }
        expect(subject.return_book).to eq expected_output
    end
end