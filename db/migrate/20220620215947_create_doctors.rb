class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.string :email
      t.string :phone
      t.string :location
    end
  end
end
