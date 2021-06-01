class MessagesController < ApplicationController
    def index
        @messages = Message.all

        respond_to do |format|
            format.html
            format.json { render json: @messages }
        end
    end

    def show
        @message = Message.find(params[:id])
    end

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)

        if @message.save
            redirect_to root_path
        else
            render :new
        end
    end

    private

    def message_params
      params.require(:message).permit(:sender, :location, :body)
    end
end