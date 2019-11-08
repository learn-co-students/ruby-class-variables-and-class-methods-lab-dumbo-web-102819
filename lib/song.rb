require 'pry'
class Song 
    
    attr_accessor :name, :artist, :genre 
    @@count = 0 
    @@genres = []
    @@artists = []
    @@all = []
   
    def self.all 
        @@all
    end 
    

    def initialize (name,artist,genre)
        @name = name
        @artist = artist 
        @genre = genre 
        @@count += 1
        @@artists << artist
        @@genres  << genre
        @@all << self
      
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
        new_hash ={}
        self.all.each do |song| 
            if new_hash [song.genre]
                # binding.pry
                new_hash[song.genre]+= 1
            else 
                new_hash[song.genre]= 1
            end 
        end 
        new_hash
    end 
 
    def self.artist_count
        new_hash ={}
        self.all.each do |song|
            if new_hash[song.artist]
                new_hash [song.artist]+= 1
            else 
                new_hash[song.artist] = 1
            end
        end 
        new_hash 
    end 
end 