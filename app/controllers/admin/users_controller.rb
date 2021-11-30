class Admin::UsersController < ApplicationController
    before_action :admin_user , only: [:index]

  def index
       @users = User.all.order(created_at: :desc)
     end
  
  def show
    @user = User.find(params[:id])
  end

  #管理者でなければホーム画面へ
     private
      def admin_user
        redirect_to("/") unless current_user.admin?
      end


end
