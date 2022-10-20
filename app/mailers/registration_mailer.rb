class RegistrationMailer < ApplicationMailer
    default from: 'illamhelpdesk@gmail.com'
    CONTACT_EMAIL = 'suguramkrishna@gmail.com'
  def submission(message)
      @message = message
      mail(to: CONTACT_EMAIL, subject: 'New registration page         submission')
    end
end
