class SongsController < ApplicationController

    def show
        @song = Song.find_by_id(params["id"])
        @genre = Genre.find_by_id(@song.genre_id)
        @artist = Artist.find_by_id(@song.artist_id)
    end
end
