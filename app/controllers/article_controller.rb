class ArticleController < ApplicationController
    before_action :admin_user , only: [:edit, :update, :destroy, :new, :create]



def show
    @article = Article.find(params[:id])
    @comments = @article.comments 
    if user_signed_in?
    @comment = current_user.comments.new 
    end
end

def new
    @article = Article.new(day:[], title:[], body:[])
end

def create
    @article = Article.new(article_params)
    if @article.save
        redirect_to "/"
    end
end

def edit
    @article = Article.find(params[:id])
end

def update
    @article = Article.find(params[:id])
    if @article.update(article_params_edit)
        redirect_to"/"
    end

end

def destroy
    article = Article.find(params[:id])
  if article.destroy
    redirect_to "/"
  end
end

private
def article_params
    params.permit(:day, :title, :body)
end

def article_params_edit
    params.require(:article).permit(:day, :title, :body)
  end


      def admin_user
        redirect_to("/") unless current_user.admin? 
      end

end
