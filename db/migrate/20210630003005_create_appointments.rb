class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :appointment_type
      t.datetime :date_time
      t.text :notes

      t.timestamps
    end
  end
end
