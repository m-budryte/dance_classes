require 'dance_class'
describe DanceClass do
  it "updates the class" do
    expect(subject.add_location("waterloo")).to eq "new location: waterloo"
  end
end
