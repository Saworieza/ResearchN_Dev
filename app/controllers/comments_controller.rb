class CommentsController < ApplicationController
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(params[:comment].permit(:name, :body, :image))
 
    redirect_to blog_path(@blog)
  end

  def destroy
    @blog = Blog.find(params[:post_id])
    @comment = @blog.comments.find(params[:id])
    @comment.destroy
 
    redirect_to blog_path(@blog)
  end

end

