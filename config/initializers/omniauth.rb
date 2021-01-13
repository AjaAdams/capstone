require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "3eb1d1e882924e078defd9e195c759b8", "0e10cd8d2c964ff2b950e58e0d3ab7cd", scope: 'user-read-email playlist-modify-public user-library-read user-library-modify'
end