require "test_helper"

class TestingMailerTest < ActionMailer::TestCase
  test "create_ac" do
    mail = TestingMailer.create_ac
    assert_equal "Create ac", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
