class SkiCheckIn < ApplicationRecord
  # Direct associations

  belongs_to :ski_area

  belongs_to :user

  # Indirect associations

  has_one    :friend_invites_sent,
             through: :user,
             source: :friend_invites_sent

  # Validations

  # Scopes

  def to_s
    user.to_s
  end
end
