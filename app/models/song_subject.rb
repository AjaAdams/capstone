class SongSubject < ApplicationRecord
  belongs_to :song
  belongs_to :subject
end
