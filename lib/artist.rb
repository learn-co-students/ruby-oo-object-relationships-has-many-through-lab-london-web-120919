class Artist

    attr_reader :name
    attr_accessor :genre

    @@all = []

    def initialize (name)
        @name = name
        @genre
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, artist = self, genre)
    end

    def genres
        self.songs.map { |song| song.genre }.uniq
    end

end