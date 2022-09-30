class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :available_beds
      t.integer :price
      t.text :description
      t.boolean :has_wifi
      t.text :welcome_message

      t.timestamps

      # t.belongs_to :city, index: true
      # t.belongs_to :user, index: true
       t.belongs_to :city
       t.belongs_to :user
    end
  end
end
