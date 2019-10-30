class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (song_name, song_artist, song_genre)
    @name = song_name
    @artist = song_artist
    @genre = song_genre
    @@count += 1
    @@genres << song_genre
    @@artists << song_artist
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
    count = {}
    @@genres.each do
      |count_genre|
      if !count[count_genre]
        count[count_genre] = 1
      else
        count[count_genre] += 1
      end
    end
    count
  end

    def self.artist_count
      count = {}
      @@artists.each do
        |count_artist|
        if !count[count_artist]
          count[count_artist] = 1
        else
          count[count_artist] += 1
        end
      end
      count
    end
end
