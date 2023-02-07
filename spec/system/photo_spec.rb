# frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let(:shop) { create(:shop) }
  let!(:photo) { create(:photo, title: 'hoge', content: 'content', shop_id: 1 ) }
  describe 'TOP画面(root_path)のテスト'
  before do
    visit root_path
  end
  context '表示の確認' do
    it 'TOP画面に「SAVE neko」とサイトタイトルが表示されているか' do
      expect(page).to have_content 'SAVE neko'
    end
    it 'root_pathが"/"であるか' do
      expect(current_path).to eq('/')
    end
  end
end