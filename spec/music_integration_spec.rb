require 'music_library'
require 'track'

RSpec.describe "integration" do
    it " adds and list tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("balloons", "foals")
        track_2 = Track.new("apricots", "bicep")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq [track_1, track_2]
    end

    it "returns a list of tracks based on keyword searches" do
        music_library = MusicLibrary.new
        track_1 = Track.new("balloons", "foals")
        track_2 = Track.new("apricots", "bicep")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search('foals')).to eq [track_1]
    end

end