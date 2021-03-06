class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    artist = Artist.find_or_create_by(name: "Drake")
    # when this method is called it should assign the song's artist to Drake
  end
end

#SELECT artists.name FROM artists JOIN songs ON artists.id = songs.artist_id JOIN genres ON songs.genre_id = genre.id
