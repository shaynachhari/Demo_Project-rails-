# Preview all emails at http://localhost:3000/rails/mailers/testing_mailer
class TestingMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/testing_mailer/create_ac
  def create_ac
    TestingMailer.create_ac
  end

end
