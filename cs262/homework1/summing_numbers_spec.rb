require_relative "summing_numbers"

describe "sumnums" do
  it "'hello 2 all of you 44' should be 46" do
    sumnums("hello 2 all of you 44").should == 46
  end

  it "'44' should be 44" do
    sumnums("44").should == 44
  end

  sentence = <<-HERE
  The Act of Independence of Lithuania was signed 
  on February 16, 1918, by 20 council members.
  HERE
  it "'#{sentence}' should be 1954" do
    sumnums(sentence).should == 1954
  end
end
