class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title
      t.string :content

      t.timestamps
      t.belongs_to :user
    end
  end
end
