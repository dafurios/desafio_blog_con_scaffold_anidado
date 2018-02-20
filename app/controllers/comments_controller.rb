class CommentsController < ApplicationController
  before_action :set_resources, except: :create

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(content: params[:comment][:content])

    @comment.post = @post

    @comment.save

    redirect_to @post

  end

  def destroy

    @comment.destroy

    redirect_to @post

  end

  def edit


  end

  def update
    @comment.update(content: params[:comment][:content])
    redirect_to @post
  end



  private

  def set_resources
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])


  end





end
