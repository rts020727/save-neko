# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'photoモデルのテスト', type: :model do
  describe 'バリデーションのテスト' do
    subject { photo.valid? }

    let(:shop) { create(:shop) }
    let!(:photo) { build(:photo, shop_id: shop.id) }

    context 'titleカラム' do
      it '空欄でないこと' do
        photo.title = ''
        is_expected.to eq false
      end
    end
    
    context 'contentカラム' do
      it '空欄でないこと' do
        photo.content = ''
        is_expected.to eq false
      end
      it '200文字以下であること: 200文字はok' do
        photo.content = Faker::Lorem.characters(number: 200)
        is_expected.to eq true
      end
      it '200文字以下であること: 200文字はNG' do
        photo.content = Faker::Lorem.characters(number: 201)
        is_expected.to eq false
      end
    end
  end
end