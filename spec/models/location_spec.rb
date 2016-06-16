require 'spec_helper'

describe "locationクラスのテスト" do
  it "locationの登録" do
    location = Location.new(location:'在室')
    location = Location.new(location:'講義')
    location = Location.new(location:'食堂')
    location = Location.new(location:'帰宅')
  end
end
