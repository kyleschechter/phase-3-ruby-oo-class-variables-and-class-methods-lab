class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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

  def count_method var
    hash = {}
    var.each do |v|
      if !!hash[v]
        hash[v] += 1
      else
        hash[v] = 1
      end
    end
    return hash
  end

  def self.genre_count
    hash = {}
    @@genres.each do |g|
      if !!hash[g]
        hash[g] += 1
      else
        hash[g] = 1
      end
    end
    return hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |a|
      if !!hash[a]
        hash[a] += 1
      else
        hash[a] = 1
      end
    end
    return hash
  end
end