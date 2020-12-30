class Subject < ApplicationRecord
  has_many :song_subjects
  has_many :songs, through: :song_subjects
end
