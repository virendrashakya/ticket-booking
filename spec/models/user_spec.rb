require 'rails_helper'

RSpec.describe User, type: :model do

  describe "user" do 

    it 'should not create user if email is blank' do 
      expect{ FactoryBot.create(:user, email: nil)}.to raise_error(ActiveRecord::RecordInvalid).with_message(/Email can't be blank/)
    end

    it 'should not create user if email is invalid' do
      expect{ FactoryBot.create(:user, email: "test")}.to raise_error(ActiveRecord::RecordInvalid).with_message(/Email is invalid/)
    end

    it 'should create user when I pass all correct data' do
      @user = FactoryBot.create(:user)
      @user.confirm
      p @user
      p @user.wallets
      expect(@user.present?).to eq(true)
    end

  end
end

