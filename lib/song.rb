require 'pry'

class Song

    attr_reader :genre , :name, :artist 



@@count = 0
@@genres = []
@@artists =[]
@@genre_count = []
@@artist_count = []

    def initialize(name, artist, genre) 
        @artist= artist
        @genre= genre
        @name= name 

        @@count += 1

        unless @@genres.include?(@genre) 
        @@genres.push(@genre) 
        end

        unless @@artists.include?(@artist) 
        @@artists.push(@artist) 
        end

        @@genre_count.push(@genre)

        @@artist_count.push(@artist)
    
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres
    end

    def self.artists
        @@artists
    end

    def self.genre_count 
        @@genre_count.tally
    end

    def self.artist_count 
        @@artist_count.tally
    end
end


binding.pry
0

