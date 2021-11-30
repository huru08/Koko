class CommentsController < ApplicationController

    def create
        @comment = current_user.comments.new(comment_params)
        if @comment.save
            redirect_to "/"
        else
            redirect_to "/"
        end
      end
    
      private
      def comment_params
        params.require(:comment).permit(:comment_content, :article_id)  #formにてpost_idパラメータを送信して、コメントへpost_idを格納するようにする必要がある。
      end

end
