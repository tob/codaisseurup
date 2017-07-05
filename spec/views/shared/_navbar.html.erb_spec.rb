require 'rails_helper'

describe "shared/_navbar.html.erb" do
  context "anonymous" do
    it "renders sign on and sign up" do
      render
      expect(rendered).to have_link "Log In"
      expect(rendered).to have_link "Sign Up"
    end
  end

  context "without profile" do
    before { sign_in user }
    let(:user) { create :user }

    it "renders sign_in" do
      render
      expect(rendered).to have_content user.email
    end
  end

  context "with profile" do
    before { sign_in user }
    let(:profile) { build :profile }
    let(:user) { create :user, profile: profile }

    it "renders first and last name" do
      render
      expect(rendered).to have_content profile.first_name
      expect(rendered).to have_content profile.last_name
    end
  end
end
