# coding: utf-8

class NoticeMailer < ActionMailer::Base
  default from: "al-lab@cm.kansai-u.ac.jp"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notice_mailer.sendmail_confirm.subject
  #
  def sendmail_confirm(user)
    @user = user
    mail(to: user.email,
         subject: "会計よりお知らせ")
  end

  def sendmail_all_confirm(month)
    @month = month
    mail(:to => "na_masabon@yahoo.co.jp",#"na-3.rtov-16.fav-24@ezweb.ne.jp",#←ここにal-labのアドレスを.
         :subject => "#{month}月度 会計連絡")
  end
end
