class ChatsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @group = Group.find(params[:group_id])
    @chats = @group.chats.all
  end

  def create
    @chat = Chat.new(messages_params)
    if @chat.save
      redirect_to request.referer
    else
      redirect_to request.referer, notice: 'メッセージの作成に失敗しました'
    end
  end


  private
  def messages_params
    params.require(:chat).permit(:message, :image, :group_id).merge(user_id: current_user.id)
  end
end
