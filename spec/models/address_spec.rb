require 'rails_helper'
describe Address do
  describe '#update' do
    it "is invalid without a family_name" do
      address = build(:address, family_name: nil)
      address.valid?
      expect(address.errors[:family_name]).to include("can't be blank")
    end

    
    it "is invalid without a first_name" do
      address = build(:address, first_name: nil)
      address.valid?
      expect(address.errors[:first_name]).to include("can't be blank")
    end

    it "is invalid without a family_name_kana" do
      address = build(:address, family_name_kana: nil)
      address.valid?
      expect(address.errors[:family_name_kana]).to include("can't be blank")
    end

    it "is invalid without a first_name_kana" do
      address = build(:address, first_name_kana: nil)
      address.valid?
      expect(address.errors[:first_name_kana]).to include("can't be blank")
    end

    it "is invalid without a postal_code" do
      address = build(:address, postal_code: nil)
      address.valid?
      expect(address.errors[:postal_code]).to include("can't be blank")
    end

    it "is invalid without a city" do
      address = build(:address, city: nil)
      address.valid?
      expect(address.errors[:city]).to include("can't be blank")
    end

    it "is invalid without a local" do
      address = build(:address, local: nil)
      address.valid?
      expect(address.errors[:local]).to include("can't be blank")
    end

    it "is invalid without a block" do
      address = build(:address, block: nil)
      address.valid?
      expect(address.errors[:block]).to include("can't be blank")
    end

  end
end