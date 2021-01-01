class MessagesController < ApplicationController
  def index
    @msg = 'Message List'
    @data = Message.all
  end

  def show
    @msg = 'Index'
    @message = Message.find(params[:id])
  end

  def add
    @msg = 'Add'
    @message = Message.new
  end

  def edit
    @msg = 'Edit data.[id = ' + params[:id] + ']'
    @message = Message.find(params[:id])
  end

  def create
    @message = Message.new message_params
    if @message.save
      redirect_to '/messages'
    else
      render 'add'
    end
  end

  def update
    obj = Message.find(params[:id])
    obj.update(message_params)
    redirect_to '/messages'
  end

  def delete
    obj = Message.find(params[:id])
    obj.destroy
    redirect_to '/messages'
  end

  private
  def message_params
    params.require(:message).permit(:person_id, :title, :message)
  end
end
