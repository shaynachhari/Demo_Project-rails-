class TestingMailer < ApplicationMailer
  def create_ac(name)
        @name = name

        mail(to: @name.email, subject: 'Welcome to my mailer student')
  end
  
  def delete_ac(name)
        @name = name
        mail(to: @name.email, subject: 'Account Deletion Notification')
  end

end
