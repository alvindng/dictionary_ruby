require('rspec')
require('definitions')

describe('Definition') do

  describe(':definition') do
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

  describe(':save') do
    it('saves the new definition into the array of definitions') do
      test_definition = Definition.new('a greeting')
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end
