class SongSubject < ApplicationRecord
  belongs_to :song
  belongs_to :subject

  # def song_show
  #   @song = Song

  # end
end
