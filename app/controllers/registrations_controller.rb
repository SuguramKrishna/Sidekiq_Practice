class RegistrationsController < ApplicationController
  def new
  end

  def create
    RegistrationJob.perform_later params.permit(:message)[:message]
   flash.now[:notice] = "Email Sent Successfully"
   render :new
  end
end
