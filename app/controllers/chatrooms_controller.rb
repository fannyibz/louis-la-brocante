class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: %i[ show ]

  def show
    authorize @chatroom
    @message = Message.new()
    @messages = @chatroom.messages
    @ad = Ad.find(params[:ad_id])
  end

  private

  def set_chatroom
    @chatroom = params[:id].present? ? Chatroom.find(params[:id]) : Chatroom.new()
  end

  def chatroom_params
    params.require(:chatroom).permit(:ad_id)
  end
end
