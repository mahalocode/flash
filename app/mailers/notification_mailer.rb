class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "travel3.biz@gmail.com",
       Subject: "A comment has been added to your place")
  end
end
