require 'spec_helper'

describe "Memberクラスのテスト" do
  
  before "ユーザーの登録" do
    member = Member.new(name:'Hosei')
    noname = Member.new(name:'')
  end
  
  it "nameが入っていれば有効" do
    expect(member).to be_valid #nameが妥当であることを期待する
  end
  
  it "nameがはいって無ければ無効" do
    expect(noname).to_not be_valid
    expect(noname.errors[:name]).to be_present #nameカラムに関するエラーメッセージの配列を返す
  end
end
