require 'player'

describe Player do
  subject(:sunali) {described_class.new("Sunali")}
  subject(:rory) {described_class.new("Rory")}
  describe '#name' do
  it "returns name" do
      expect(sunali.name).to eq "Sunali"
  end
end
  describe '#hit_points' do
    it "returns hit points" do
      expect(sunali.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end
describe '#receive_damage' do
  it "reduces the player hit points" do
    expect {rory.receive_damage}.to change {rory.hit_points}.by(-10)
  end
end
end
