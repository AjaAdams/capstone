class CreateSongSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :song_subjects do |t|
      t.integer :song_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
