class MessagesController < ApplicationController

  def create
  	Message.create(text:params[:message][:text], user_id:params[:message][:user_id])
  	redirect_to "/users/main"
  end

  def delete
  end

  def create_comment
  	Comment.create(text:params[:message][:text], user_id:params[:message][:user_id], message_id:params[:message][:message_id])
  	redirect_to "/users/main"
  end
end
