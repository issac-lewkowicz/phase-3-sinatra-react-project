class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :date_time
      t.string :appointment_type
      t.belongs_to :doctor
      t.belongs_to :patient
      
      t.timestamps
    end
  end
end
