class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def create
  	comment = Comment.new(comment_params)
  	comment.user_id = current_user.id

  	if comment.save
      redirect_to(:back)
    else
      render 'entries#show'
    end
  end

  def comment_params
    params.require(:comment).permit(:body, :entry_id)
  end
end
