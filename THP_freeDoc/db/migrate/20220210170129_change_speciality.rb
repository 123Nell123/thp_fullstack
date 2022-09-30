class ChangeSpeciality < ActiveRecord::Migration[5.2]
  def change

      # change_table:doctors do |t|

        # t.remove :speciality 
    

        remove_column :doctors, :speciality, :string
        # add_column :doctors, :specialty, :string

  end
end
