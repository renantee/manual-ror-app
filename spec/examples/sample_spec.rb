RSpec.describe Array do
  subject { [1, 2, 3, 4] }
  it "returns the number of items" do
    expect(subject.size).to eq(4)
  end
end

RSpec.describe String do
  subject { "1234" }
  it "returns the number of items" do
    expect(subject.size).to eq(4)
  end
end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3, d: 4 } }
  it "returns the number of items" do
    expect(subject.size).to eq(4)
  end
end

class NewThing
  def size
    4
  end
end

RSpec.describe NewThing do
  subject { described_class.new }
  it "returns the number of items" do
    expect(subject.size).to eq(4)
  end
end
