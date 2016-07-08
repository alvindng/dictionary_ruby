require('rspec')
require('words')
require('definitions')

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

  describe('.find') do
    it('returns a word by its id number') do
      test_word = Word.new('hello')
      test_word.save()
      test_word2 = Word.new('goodbye')
      test_word2.save()
      expect(Word.find(test_word2.id())).to(eq(test_word2))
    end
  end

  describe('#add_definition') do
    it('adds a definition to a word') do
      test_word = Word.new('hello')
      test_definition = Definition.new("a greeting")
      test_word.add_definition(test_definition)
      expect(test_word.definitions()).to(eq([test_definition]))
    end
  end

end
