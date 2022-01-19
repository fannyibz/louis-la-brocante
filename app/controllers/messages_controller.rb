class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    authorize @message
    @message.user = current_user
    if @message.save
      respond_to do |format|
        format.html {}
        format.js   { redirect_to ad_chatroom_path(@message.ad_id, @message.chatroom_id) }
      end
    else
      render "chatrooms/show"
    end
  end
  
  private
  
  def message_params
    params.require(:message).permit(:content, :ad_id, :chatroom_id)
  end
end
