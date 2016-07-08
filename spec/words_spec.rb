require('rspec')
require('words')

describe('Word') do
  describe('#name') do
    it('#returns the name of the word') do
      test_word = Word.new('hello')
      expect(test_word.name()).to(eq('hello'))
    end
  end
end
