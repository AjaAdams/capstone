class AddFeatureToSong < ActiveRecord::Migration[6.0]
  def change
    add_column :songs, :featuring, :string
  end
end
