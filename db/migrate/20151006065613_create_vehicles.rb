class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :licenseplate
      t.references :brand, index: true, foreign_key: true
      t.references :model, index: true, foreign_key: true
      t.string :manufacturingyear
      t.decimal :weight
      t.decimal :width
      t.decimal :grossweight
      t.decimal :dryweight
      t.decimal :usefulload
      t.references :typeofvehicle, index: true, foreign_key: true
      t.date :datesoat
      t.date :datetechnicalreview

      t.timestamps null: false
    end
  end
end
