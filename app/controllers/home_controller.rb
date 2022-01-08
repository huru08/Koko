class HomeController < ApplicationController

  def top 
    @articles = Article.all.order(created_at: :desc).page(params[:page]).per(8)
   @infos = Info.all.order(created_at: :desc)
   if user_signed_in?
     @user = User.find(current_user.id)
   end
end

def koko
end

end