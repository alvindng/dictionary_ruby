require('rspec')
require('definitions')

describe('Definition') do

  describe(':definition') do
    it "returns a definition entered by a user" do
    test_definition = Definition.new("a greeting")
    expect(test_definition.definition()).to(eq("a greeting"))
    end
  end
end
