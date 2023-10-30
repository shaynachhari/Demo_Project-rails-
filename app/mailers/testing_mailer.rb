class TestingMailer < ApplicationMailer
  # debugger
  def create_ac(student)
    # attachments[:profile_image]
        @student = student
        # @student = student
        
        mail(to: @student.email, subject: 'Welcome to my mailer student') do |format|
      format.html { render 'create_ac' }
    end
  end
  
  # def delete_ac(student)
  #       @name = student
  #       mail(to: @student.email, subject: 'Account Deletion Notification')
  # end

  

end
