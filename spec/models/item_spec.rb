require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    user = FactoryBot.create(:user)
    @item = FactoryBot.build(:item, user_id: user.id)
  end

  context 'DB保存に失敗する' do
    it '画像が空だと保存できない' do
      @item.image = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end

    it 'nameが空だと保存できない' do
      @item.name = ' '
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it 'explanationが空だと保存できない' do
      @item.explanation = ' '
      @item.valid?
      expect(@item.errors.full_messages).to include("Explanation can't be blank")
    end

    it 'priceが空だと保存できない' do
      @item.price = nil
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end

    it 'status_idが「0」だと保存できない' do
      @item.status_id = 0
      @item.valid?
      expect(@item.errors.full_messages).to include('Status Select')
    end

    it 'fee_idが「0」だと保存できない' do
      @item.fee_id = 0
      @item.valid?
      expect(@item.errors.full_messages).to include('Fee Select')
    end

    it 'prefecture_idが「0」だと保存できない' do
      @item.prefecture_id = 0
      @item.valid?
      expect(@item.errors.full_messages).to include('Prefecture Select')
    end

    it 'schedule_idが「0」だと保存できない' do
      @item.schedule_id = 0
      @item.valid?
      expect(@item.errors.full_messages).to include('Schedule Select')
    end

    it 'priceは半角数字でないと登録できない' do
      @item.price = 'aaa'
      @item.valid?
      expect(@item.errors.full_messages).to include('Price Half-width number')
    end
  end
end
