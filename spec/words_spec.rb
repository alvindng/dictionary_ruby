require('rspec')
require('words')

describe('Word') do
  before() do
    Word.clear()
end

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

  describe('#save') do
    it('saves the newly added word into an array of words') do
      test_word = Word.new('hello')
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved words') do
      Word.new('hello')
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the word') do
      test_word = Word.new('hello')
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

end
