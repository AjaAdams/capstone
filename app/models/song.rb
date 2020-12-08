class Song < ApplicationRecord
  has_many :subjects, through: :song_subjects
  has_many :song_subjects
end
