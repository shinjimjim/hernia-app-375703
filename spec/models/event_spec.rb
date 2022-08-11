require 'rails_helper'

RSpec.describe Event, type: :model do
  before do
    @event = FactoryBot.build(:event)
  end

  describe '経過観察の登録' do
    context '経過観察が登録できる場合' do
      it 'pain_idが0以外であれば登録できること' do
        expect(@event).to be_valid
      end
    end
    context '経過観察が登録できない場合' do
      it 'pain_idが0であれば登録できない' do
        @event.pain_id = '0'
        @event.valid?
        expect(@event.errors.full_messages).to include("痛み指数が選択されていません。")
      end     
      it 'ユーザーが紐付いていなければ投稿できない' do
        @event.user = nil
        @event.valid?
        expect(@event.errors.full_messages).to include("Userが存在する必要があります")
      end
    end
  end
end
