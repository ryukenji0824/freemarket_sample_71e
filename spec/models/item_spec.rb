require 'rails_helper'


describe Item, type: :model do
  describe '#create' do
    let(:item) {create(:item)}

    context 'can save' do
      it 'is valid without size' do
        expect(build(:item, size: nil)).to be_valid
      end
    end
    
    context 'can not save' do

      it 'is invalid without user_id' do
        item = build(:item, user_id: nil)
        item.valid?
        expect(item.errors[:user_id]).to include("を入力してください")
      end

      it 'is invalid without category_id' do
        item = build(:item, category_id: nil)
        item.valid?
        expect(item.errors[:category_id]).to include("を入力してください")
      end

      it 'is invalid without brand_id' do
        item = build(:item, brand_id: nil)
        item.valid?
        expect(item.errors[:brand_id]).to include("を入力してください")
      end
      
      it 'is invalid without name' do
        item = build(:item, name: nil)
        item.valid?
        expect(item.errors[:name]).to include("を入力してください")
      end
      
      it 'is invalid without price' do
        item = build(:item, price: nil)
        item.valid?
        expect(item.errors[:price]).to include("を入力してください")
      end

      it 'is invalid without description' do
        item = build(:item, description: nil)
        item.valid?
        expect(item.errors[:description]).to include("を入力してください")
      end

      it 'is invalid without prefecture_id' do
        item = build(:item, prefecture_id: nil)
        item.valid?
        expect(item.errors[:prefecture_id]).to include("を入力してください")
      end

      it 'is invalid without postage' do
        item = build(:item, postage: nil)
        item.valid?
        expect(item.errors[:postage]).to include("を入力してください")
      end

      it 'is invalid without condition_id' do
        item = build(:item, condition_id: nil)
        item.valid?
        expect(item.errors[:condition_id]).to include("を入力してください")
      end

      it 'is invalid without wait' do
        item = build(:item, wait: nil)
        item.valid?
        expect(item.errors[:wait]).to include("を入力してください")
      end

    end
  end
end