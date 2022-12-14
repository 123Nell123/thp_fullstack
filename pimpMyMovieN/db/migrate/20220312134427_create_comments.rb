class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :description
      t.date :create_date
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.timestamps
    end
  end
end
