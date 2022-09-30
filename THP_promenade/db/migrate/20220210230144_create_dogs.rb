class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :race

      t.timestamps
      t.belongs_to :dogsitters, index: true 
      t.belongs_to :city
    end
  end
end
