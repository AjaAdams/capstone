class AddPreviewUrlToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :preview_url, :string
  end
end
