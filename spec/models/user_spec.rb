require 'rails_helper'
describe User do
  describe '#create' do
    it "is valid and create" do
      user = User.new(nickname: "あああ", email: "kkk@gmail.com", encrypted_password: "00000000", password_confirmation: "00000000", family_name: "橋本", first_name: "和也", family_name_kana: "ハシモト", first_name_kana: "カズヤ", number: "08072650913", gender: 1, year: 2000, month: 1, day: 10)
      expect(user.save)
    end
  end
end