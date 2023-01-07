# frozen_string_literal: true

class Owner::SessionsController < Devise::SessionsController
  before_action :shop_owner_state, only: [:create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected
  
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  
  # 退会しているかを判断するメソッド
  def shop_owner_state
    @shop_owner = Shop.find_by(email: params[:shop][:email])
    if @shop_owner
      # 取得したアカウントのパスワードと入力されたパスワードが一致しているかを判断
      if @shop_owner.valid_password?(params[:shop][:password]）&& (@shop_owner.active_for_authentication? == false)
        flash[:error] = '退会済みです。'
        redirect_to new_shop_session_path
      end
    end
  end
end
