class MessagesController < ApplicationController

  # GET /jobs/new
  def new
    if message_params
      create
      return
    end

    @message = Message.new

    render 'new'
  end

  # POST /messages
  def create
    @message = Message.new(message_params)

    if @message.save
      flash[:success] = 'Message sent!'
      redirect_to contact_path
    else
      flash[:danger] = 'Unable to send message.'
      render 'new'
    end
  end

  private

    # Never trust parameters from the internet, only allow the white list through.
    def message_params
      if params[:message].nil?  || params[:message].empty?
        false
      else
        params.require(:message).permit(
          :name,
          :email_address,
          :company_name,
          :message,
          :budget,
          :website,
          :project_date)
      end
    end
end
