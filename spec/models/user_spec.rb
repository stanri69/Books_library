require 'rails_helper'

RSpec.describe User, type: :model do
  it "is not valid without a email" do
    auction = User.new(email: nil)
    expect(auction).to_not be_valid
  end
  it "is not valid without a password" do
    auction = User.new(password: nil)
    expect(auction).to_not be_valid
  end
end
