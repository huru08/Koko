class HomeController < ApplicationController
  before_action :authenticate_user!

  def top 
    @articles = Article.all.order(created_at: :desc)
   @infos = Info.all.order(created_at: :desc)
   @user = User.find(current_user.id)
end
end