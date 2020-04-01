require 'rails_helper'
RSpec.describe Address, type: :model do
  describe '#update' do
    it "is valid with a family_name, first_name , family_name_kana, first_name_kana, postal_code, city, local, block" do
      address = build(:address)
      expect(address).to be_valid
    end
    
    it "is invalid without a all colmun" do
      address = build(:address, family_name: nil, first_name: nil, family_name_kana: nil, first_name_kana: nil, postal_code: nil, city: nil, block: nil)
      address.valid?
      expect(address.errors[:family_name]).to include("を入力してください")
    end

    it "is invalid without a local" do
      address = Address.new(family_name: "テスト", first_name: "テスト", family_name_kana: "テスト", first_name_kana: "テスト", postal_code: "1111111", city: "1", block: "1-1-1", local: "")
      address.valid?
      expect(address.errors[:local]).to include("を入力してください")
    end

    it "is valid with a password that has in 7 characters " do
      address = build(:address, postal_code: "0000000")
      address.valid?
      expect(address).to be_valid
    end

    describe '#katakana' do
      it 'family_name_kanaがカタカナで返ること' do
        address = build(:address, family_name_kana: "kana")
        address.valid?
        expect(address.errors[:family_name_kana]).to include("全角カナのみが使えます")
      end
    
      it 'first_name_kanaがカタカナで返ること' do
        address = build(:address, first_name_kana: "kana")
        address.valid?
        expect(address.errors[:first_name_kana]).to include("全角カナのみが使えます")
      end
    end
    describe '#zenkaku' do
      it "family_nameが全角で返る" do
        address = build(:address, family_name: "zenkaku")
        address.valid?
        expect(address.errors[:family_name]).to include("全角文字のみが使えます")
      end

      it 'first_nameが全角で返ること' do
        address = build(:address, first_name: "zenkaku")
        address.valid?
        expect(address.errors[:first_name]).to include("全角文字のみが使えます")
      end
    end

  end
end