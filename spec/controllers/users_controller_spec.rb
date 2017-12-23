require 'rails_helper'

describe UsersController, type: :controller do

  before do
    @user = User.create!(first_name: "Eman", last_name: "Adnan", email: "emanadnan279@gmail.com", password: "123456", admin: true)
  end

  describe 'GET #show' do
     context 'when a user is logged in' do
          before do
        sign_in @user
     end
     end
  end

end