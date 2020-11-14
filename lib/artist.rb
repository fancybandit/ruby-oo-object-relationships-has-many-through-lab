
class Artist

    attr_accessor :name

    @@all = []

    def initialize(name)
        self.name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        song_list = songs.uniq {|song| song.genre}
        song_list.collect {|song| song.genre}
    end
end

