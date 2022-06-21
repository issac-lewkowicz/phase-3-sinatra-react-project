class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.date :birthdate
      t.string :email
      t.string :phone
      t.string :address
    end
  end
end
