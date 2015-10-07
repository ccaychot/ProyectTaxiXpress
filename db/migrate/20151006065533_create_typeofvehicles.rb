class CreateTypeofvehicles < ActiveRecord::Migration
  def change
    create_table :typeofvehicles do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
