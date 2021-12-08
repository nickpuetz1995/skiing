class NonSkiActivityResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :description, :string
  attribute :address, :string
  attribute :tagged_ski_area_id, :integer
  attribute :title, :string

  # Direct associations

  # Indirect associations

end
