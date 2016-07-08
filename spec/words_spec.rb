require('rspec')
require('words')

describe('Word') do
#   before() do
#     Word.clear()
# end

  describe('#name') do
    it('returns the name of the word') do
      test_word = Word.new('hello')
      expect(test_word.name()).to(eq('hello'))
    end
  end

  describe('.all') do
    it('is an empty array of words') do
      expect(Word.all()).to(eq([]))
    end
  end

end
