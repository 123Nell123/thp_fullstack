class CreateRelationCities < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :city
    add_reference :appointements, :city
    add_reference :patients, :city
    
  end
end
