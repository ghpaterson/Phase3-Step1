class MusicLibrary
    def initialize
      @library = []
    end
  
    def add(track) 
      @library << track
    end
  
    def all
      return @library
    end
    
    def search(keyword) # keyword is a string
      return @library.select do |track|
        track.matches?(keyword)
      end
    end
  end