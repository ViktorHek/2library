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

    it 'show list off books that\'s available' do
        expected_output = "#{:title} is available"
        expect(subject.show_available_books).to be expected_output
    end

    it 'show list off books that\'s not available' do
        expected_output = "#{:title} is available"
        expect(subject.show_available_books).to expected_output
    end

    # it 'can\'t check out a book that isn\'t available' do
    #     allow(book).to receive(:available).and_return(false)
    #     expected_output = { status: false, message: 'book not available', date: '28/11' }
    #     expect(subject.check_out_book(false, '28/11')).to eq expected_output
    # end

    # it 'can check out an available book' do
    #     expected_output = { status: true, message: 'book available, return by ', date: Date.today } # ändra datumen till en bättre funktion
    #     expect(subject.check_out_book(true, '31/11')).to eq expected_output
    # end
end




    # it 'show return-date when book is borrowed' do
    #     expected_output = [:available] == false ? return [:return_date] => Date.today >> 1 }
    #     expect(subject.show_return_date).to eq expected_output
    # end