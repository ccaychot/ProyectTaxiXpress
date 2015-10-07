class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string :identity
      t.text :lastname
      t.text :address
      t.references :category, index: true, foreign_key: true
      t.string :class1
      t.date :expeditiondate
      t.date :revalidationdate
      t.string :numberlicense
      t.date :dateexpiry
      t.date :birthdate
      t.references :sex, index: true, foreign_key: true
      t.references :status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
