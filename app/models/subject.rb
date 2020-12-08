class Subject < ApplicationRecord
  has_many :songs, through: :song_subjects
  has_many :song_subjects
end
