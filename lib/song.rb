class Song 
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist)
        @@genres.push(genre)
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each{ |genre|
        genre_hash[genre] ? genre_hash[genre] += 1 : genre_hash[genre] = 1
        }
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each{ |artist|
        artist_hash[artist] ? artist_hash[artist] += 1 : artist_hash[artist] = 1
        }
        artist_hash
    end







end