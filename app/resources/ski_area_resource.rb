class SkiAreaResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :address, :string
  attribute :forecast, :string
  attribute :snow_last_night, :integer

  # Direct associations

  has_many   :ski_area_reviews

  has_many   :ski_check_ins

  # Indirect associations

end
