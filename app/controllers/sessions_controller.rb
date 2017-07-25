class SessionsController < ApplicationController
  # ログインフォーム
  def new
    sign_out
  end

  # ログイン処理
  def create
    user = User.find_by(enpno: params[:session][:enpno].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to user
    else
      render 'new'
    end
  end

  # ログアウト
  def destroy
    sign_out
    redirect_to root_url
  end

end
