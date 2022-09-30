class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|

      t.timestamps
      t.datetime :date
      t.belongs_to :dogs, index: true 
      t.belongs_to :dogsitters, index: true 
    end
  end
end
