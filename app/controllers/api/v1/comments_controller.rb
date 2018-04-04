class Api::V1::CommentsController < ApplicationController

  def create
    book = Book.find(params[:book_id])
    comment = book.comments.build(comment_params)
    if comment.save
      render json: comment, status: 201
    end
  end

  def destroy
    book = Book.find(params[:book_id])
    comment = book.comment.find(params[:id])
    if comment.destroy
      render json: {commentId: comment.id}, status: 200
    end
  end

  private
  def comment_params
    params.permit(:content)
  end
  
end
