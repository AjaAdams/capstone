class Song < ApplicationRecord
  has_many :song_subjects
  has_many :subjects, through: :song_subjects

  def subject
    SongSubject.find_by(subject_id: params["subject_id"])
  end

  # def lyrics_api
  #   response = HTTP.get("http://api.musixmatch.com/ws/1.1/track.search?q_artist=justin bieber&page_size=3&page=1&s_track_rating=desc")
  #   # render json: response.parse
  # end

  # def preview_url_spotify
  #   # @song = Song.find(1)
  #   # @song = @song.title
  #   track = RSpotify::Track.search('Hello')
  #   track = track.first.preview_url
  # end

end
