class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
     
      t.string :title
      t.text :synopsis
      t.string :director
      t.string :original_soundtrack
      t.date :release_date
      t.integer :note

      t.timestamps
    end
  end
end
