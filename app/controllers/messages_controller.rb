class MessagesController < ApplicationController
  before_action :set_message, only: %i[show update destroy]

  # GET random message
  def index
    @message = Message.order('RANDOM()').first

    render json: @message
  end
end
