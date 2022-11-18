require 'track'

RSpec.describe Track do
    it "returns true if matches exist" do
        track = Track.new("balloon", "foals")
        expect(track.matches?("foals")).to eq true
    end

    it "returns false if matches DO Not exist" do
        track = Track.new("balloon", "foals")
        expect(track.matches?("bicep")).to eq false
    end
end