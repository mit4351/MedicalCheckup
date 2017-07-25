class UsersController < ApplicationController

before_action :signed_in_user
before_action :correct_user, only: [:edit, :update, :show]
before_action :authority_user, only: [:index, :new, :create]


  def index
    # @users = User.all
    @users = User.page(params[:page]).per(20).order(:id)
    @relationships = Relationship.all
  end

  def show
    @user = User.find(params[:id])
    @relationships = Relationship.all

    respond_to do |format|
         format.html # show.html.erb
         format.pdf do
             # PDF文書を作成
             pdf = UserPDF.new(@user)
             #pdf = Prawn::Document.new
             # PDFに "Hello, Prawn!!" と表示する
             # フォントを設定(明朝体)
             #pdf.font "vendor/fonts/ipaexm.ttf"
             #pdf.text "Hello, Prawn!!"
             #pdf.text "こんにちは、プローン"

             # 画面にPDFを表示する
             # disposition: "inline" によりPDFはダウンロードではなく画面に表示される
             send_data pdf.render,
             filename:    "#{@user.id}.pdf",
             type:        "application/pdf",
             disposition: "inline"
         end
     end
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # sign_in @user
      # redirect_to @user
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    
      if current_user.authority == "1"
          page2 = params[:page][:name]
          point = params[:note][:point]
          print("::::::::" << point << "::::::::" << page2 )
      end

      if @user.update_attributes(user_params)
          # redirect_to @user
          if current_user.authority == "1"
            redirect_to users_path
          else
            redirect_to @user
          end
      else
        render 'edit'
      end
  end

  private

    def user_params
        params.require(:user).permit(:name, :enpno, :authority, :password, :password_confirmation)
    end

    def correct_user
      @user = User.find(params[:id])
      if !authority?
          if !current_user?(@user)
             sign_out
             redirect_to root_url unless current_user?(@user)
          end
      end
    end

end
