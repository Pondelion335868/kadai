# coding: utf-8

class NoticeMailer < ActionMailer::Base
  default from: "from@example.com"
					cc: "@"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user)
		@user = user

    mail (to: "to@example.org"
					subject: "ありがとうございます")
  end
end
