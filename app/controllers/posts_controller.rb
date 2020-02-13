class PostsController < ApplicationController
    def index
        @post=Post.all
    end

    def show
        @post=Post.find(params[:id])
    end

    def new
        @post=Post.new
    end

    def create
        @post=Post.new(params_of_post)

        if(@post.save)
            redirect_to @post
        else
            render 'new'
        end
    end

    def edit
        @post=Post.find(params[:id])
    end

    def update
        @post=Post.find(params[:id])

        if(@post.update(params_of_post))
            redirect_to @post
        else
            render 'edit'
        end
    end

    def destroy
        @post=Post.find(params[:id])
        @post.destroy

        redirect_to @post
    end

    def params_of_post
        params.require(:post).permit(:title, :body)
    end
end
