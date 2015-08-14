require 'rails_helper'

describe User, type: :model do

  let!(:user) do
    # User.create(email: 'test@test.com',
    #             password: '12345678',
    #             password_confirmation: '12345678')
    User.create
  end

  # it 'authenticates when given a valid email and password' do
  #   authenticated_user = User.authenticate(user.email, user.password)
  #   expect(authenticated_user).to eq user

  # end

  it 'validates presence of email' do
    expect(user).to have(1).error_on(:email)
  end

  it 'validates password confirmation' do

  end
end
