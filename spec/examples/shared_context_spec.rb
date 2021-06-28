RSpec.shared_context "common" do
  before do
    @people = ["James Baldwin", "William F. Buckley"]
  end

  def helper_method
    "This works"
  end

  let(:variable) { "This isn't real" }
end

RSpec.describe "example group" do
  include_context "common"

  it "can use instance variables" do
    @people.pop
    expect(@people).to eq(["James Baldwin"])
  end

  it "can use instance variables across different examples" do
    expect(@people.length).to eq(2)
  end

  it "can use shared helper methods" do
    expect(helper_method).to eq("This works")
  end

  it "can use regular vaiables too" do
    expect(variable).to eq("This isn't real")
  end
end

RSpec.describe "second example group" do
  include_context "common"

  it "can also be used in different example groups" do
    expect(helper_method).to eq("This works")
  end
end
