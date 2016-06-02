require 'rails_helper'

RSpec.describe Message, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
  
  context "message: " do
    it "User can show"
    it "Login user can create messages" do
      message = Message.new(member_id: 1, message: "test")
      expect(message.member_id).to eq(1)
      expect(message.message).to eq("test")
    end
    it "Login user can change own old messages"
  end
  
  context "validate: " do
    it "member_id should not be empty" do
      message = Message.new(member_id: nil)
      expect(message).not_to be_valid
    end
    it "message should not be empty" do
      message = Message.new(message: nil)
      expect(message).not_to be_valid
    end
  end 
end
