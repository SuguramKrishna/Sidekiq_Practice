class RegistrationJob < ActiveJob::Base
  queue_as :default

  def perform(message)
    # Do something later
    RegistrationMailer.submission(message).deliver
  end
end
