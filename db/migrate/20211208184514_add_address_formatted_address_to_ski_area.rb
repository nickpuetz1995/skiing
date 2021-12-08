class AddAddressFormattedAddressToSkiArea < ActiveRecord::Migration[6.0]
  def change
    add_column :ski_areas, :address_formatted_address, :string
  end
end
