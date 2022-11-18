require 'music_library'

RSpec.describe MusicLibrary do
    it "adds and lists tracks" do
        music_library = MusicLibrary.new
        fake_track_1 = double :track 
        fake_track_2 = double :track
        music_library.add(fake_track_1)
        music_library.add(fake_track_2)
        expect(music_library.all).to eq [fake_track_1, fake_track_2]
    end

    it "returns the title and artist based on keyword search" do
        music_library = MusicLibrary.new
        fake_track_1 = double :track, matches?: true
        fake_track_2 = double :track, matches?: false
        music_library.add(fake_track_1)
        music_library.add(fake_track_2)
        expect(music_library.search("foals")).to eq [fake_track_1]
    end
end