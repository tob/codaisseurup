require 'rails_helper'

describe Profile do
  describe "#full_name" do
    it "is composed of first and last name" do
      profile = profile(:miriam)
      expect(profile.full_name).to eq "Miriam Tocino"
    end
  end
end
