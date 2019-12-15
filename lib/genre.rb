class Genre

    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    #The Genre class needs an instance method, #songs, that iterates 
    #through all songs and finds the songs that belong to that genre.

    def songs 
        Song.all.select {|song| song.genre == self}
    end 

    #The Genre class needs an instance method, #artists, that iterates over 
    #the genre's collection of songs and collects the artist that owns each song.

    def artists
        songs.map {|song| song.artist}
    end 
end 