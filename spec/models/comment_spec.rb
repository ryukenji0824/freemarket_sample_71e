require 'rails_helper'
describe Comment do
  describe '#create' do
    it "is invalid without a text" do
      comment = Comment.new(text: "", user_id: 1, item_id: 2,id: 1,created_at: "2020-01-01 00:00:00", updated_at: "2020-01-01 00:00:01")
      comment.valid?
      expect(comment.errors[:text]).to include("を入力してください")
    end
    it "is invalid without a user_id" do
      comment = Comment.new(text: "test", user_id: "", item_id: 2,id: 1,created_at: "2020-01-01 00:00:00", updated_at: "2020-01-01 00:00:01")
      comment.valid?
      expect(comment.errors[:user_id]).to include("を入力してください")
    end
    it "is invalid without a item_id" do
      comment = Comment.new(text: "test", user_id: 1, item_id: "",id: 1,created_at: "2020-01-01 00:00:00", updated_at: "2020-01-01 00:00:01")
      comment.valid?
      expect(comment.errors[:item_id]).to include("を入力してください")
    end
    it "is invalid without a text" do
      comment = build(:comment, text: "")
      user.valid?
      expect(comment.errors[:text]).to include("を入力してください")
    end
    it "is invalid without a user_id" do
      comment = build(:comment, user_id: "")
      comment.valid?
      expect(comment.errors[:user_id]).to include("を入力してください")
    end
    it "is invalid without a item_id" do
      comment = build(:comment, item_id: "")
      comment.valid?
      expect(comment.errors[:item_id]).to include("を入力してください")
    end
  end
end
