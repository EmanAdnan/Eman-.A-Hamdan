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

     context 'when a user is not logged in' do
      it 'redirects to login' do
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

end