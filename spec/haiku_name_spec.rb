require "minitest/spec"
require "minitest/autorun"
require "haiku_name"

describe HaikuName, '.generate' do
  it "returns a name like adjective-noun-af12" do
    name = HaikuName.generate
    name.must_match /\A\w+-\w+-[a-f0-9]{4}\z/
  end

  it "won't return the same name for subsequent calls" do
    name1 = HaikuName.generate
    name2 = HaikuName.generate
    name1.wont_equal name2
  end

  it "permits optional configuration of the token length" do
    name = HaikuName.generate(8)
    name.must_match /-[a-f0-9]{8}\z/
    name = HaikuName.generate(9)
    name.must_match /-[a-f0-9]{9}\z/
  end

  it "drops the token if token length is 0" do
    name = HaikuName.generate(0)
    name.must_match /\A\w+-\w+\z/
  end
end
