class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
<<<<<<< HEAD
      t.string :appointment_type
=======
      t.string :type
>>>>>>> 54848dc5e3a56748688a2f07c33903572722b346
      t.datetime :date_time
      t.text :notes

      t.timestamps
    end
  end
end
