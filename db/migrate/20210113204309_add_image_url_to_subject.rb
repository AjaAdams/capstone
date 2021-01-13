class AddImageUrlToSubject < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :image_url, :string
  end
end
