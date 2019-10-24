class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.belongs_to :patient
      t.belongs_to :doctor
      t.references :city, foreign_key: true, index: true
      t.timestamps
    end
  end
end
