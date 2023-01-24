# frozen_string_literal: true

class Owner::SessionsController < Devise::SessionsController
  before_action :shop_state, only: [:create]
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
  
  def after_sign_in_path_for(resource)
    owner_shop_path(current_shop)
  end

  # 退会しているかを判断するメソッド
  def shop_state
    @shop = Shop.find_by(email: params[:shop][:email])
    if @shop
      if @shop.valid_password?(params[:shop][:password]) && (@shop.active_for_authentication? == false)
        flash[:error] = '退会済みです。'
        redirect_to new_shop_session_path
      end
    end
  end
end
