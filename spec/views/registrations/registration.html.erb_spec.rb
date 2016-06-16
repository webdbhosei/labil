require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  before do
    user_id = Registration.new(user_id:'Hosei')
    nouser_id = Registration.new(user_id:'')
  end
  
  it "isn't valid without user_id" do
    expect(registration).not_to be_valid
  end
  
  it "isn't valid without place" do
    expect(registration).not_to be_valid
    expect(registration.errors[:user_id]).to be_present
  end
end
