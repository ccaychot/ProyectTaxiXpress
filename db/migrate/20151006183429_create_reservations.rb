class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :lastnameandname
      t.string :dni
      t.string :phone1
      t.string :phone2
      t.string :mail
      t.date :reservationdate
      t.time :whenbooking
      t.string :point
      t.string :startingdistrict
      t.string :pointofarrival
      t.string :districtarrival
      t.references :status, index: true, foreign_key: true
      t.decimal :cost
      t.references :driver, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
