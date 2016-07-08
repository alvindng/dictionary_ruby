require('rspec')
require('definitions')

describe('Definition') do
  before() do
  Definition.clear()
  end

  describe('#definition') do
    it "returns a definition entered by a user" do
      test_definition = Definition.new("a greeting")
      expect(test_definition.definition()).to(eq("a greeting"))
    end
  end

  describe('.all') do
    it('starts as an empty array of definitions') do
      test_definition = Definition.new("a greeting")
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the new definition into the array of definitions') do
      test_definition = Definition.new('a greeting')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved definitions') do
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of a definition') do
    test_definition = Definition.new('a greeting')
    test_definition.save()
    expect(test_definition.id()).to(eq(1))
    end
  end
  #
  # describe('#find') do
  #   it('returns a definition by its id number') do
  #     test_definition = Definition.new("a greeting")
  #     test_definition.save()
  #     test_definition2 = Definition.new("a closing statement")
  #     test_definition2.save()
  #     expect(Word.find(test_definition2.id())).to(eq(2))
  #   end
  # end
end
