require 'player'

describe Player do
  subject(:sunali) {described_class.new("Sunali")}
  it "returns name" do
      expect(sunali.name).to eq "Sunali"
  end
end
