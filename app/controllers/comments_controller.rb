class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        redirect_to post_path(@post)
    end

    def comment_params#params_of_comments
        params.require(:comment).permit(:username, :body)
    end
end
