class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment
      t.string :location
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
