require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }
  let(:list) { create(:list) }
  let(:item) { create(:item ) }

  it { is_expected.to have_many(:lists) }

  describe "attributes" do
    it "responds to username and password" do
      expect(user).to have_attributes(username: user.username, password: user.password, email: user.email, full_name: user.full_name, bio: user.bio)
    end
  end


end
