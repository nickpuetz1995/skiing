class AddAddressLatitudeToSkiArea < ActiveRecord::Migration[6.0]
  def change
    add_column :ski_areas, :address_latitude, :float
  end
end
