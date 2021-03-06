require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:non_ski_reviews) }

    it { should have_many(:ski_area_reviews) }

    it { should have_many(:ski_check_ins) }

    it { should have_many(:friend_requests) }

    it { should have_many(:friend_invites_sent) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
