class ChatroomChannel < ApplicationCable::Channel
  def subscribed
      #gets called as soon as there is  a subscription made from a client
      @chatroom = Chatroom.find(params[:id])
      stream_for @chatroom
  end

  def unsubscribed
      #Any cleanup needed when channel is unsubscribed
  end
end
