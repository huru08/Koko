class HomeController < ApplicationController

  def top 
    @articles = Article.all.order(created_at: :desc)
   @infos = Info.all.order(created_at: :desc)
   if user_signed_in?
     @user = User.find(current_user.id)
   end
end
end