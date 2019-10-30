class Song 
    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre, :new_hash
    def initialize(song_name, artist_name, song_genre)
        @name = song_name
        @artist = artist_name 
        @genre = song_genre
        @@count += 1
        @@genres << song_genre
        @@artists << artist_name 
    end

    def self.count 
        @@count
    end 
    def self.genres 
        @@genres.uniq
    end 
    def self.artists
        @@artists.uniq 
    end 
    def self.genre_count 
        @new_hash = {}
        @@genres.each do |individual_genre|
            if @new_hash[individual_genre]
                @new_hash[individual_genre] += 1
            else 
                @new_hash[individual_genre] = 1
            end 
        end 
        @new_hash 
    end 
    def self.artist_count 
        @new_hash = {}
        @@artists.each do |individual_artists|
            if @new_hash[individual_artists]
                @new_hash[individual_artists] += 1
            else
                @new_hash[individual_artists] = 1 
            end 
        end
        @new_hash
    end 

end 