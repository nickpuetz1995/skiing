class CreateSkiAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :ski_areas do |t|
      t.string :name
      t.string :address
      t.string :forecast
      t.integer :snow_last_night

      t.timestamps
    end
  end
end
