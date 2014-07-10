# coding: utf-8

class ExtraController < ApplicationController

  def sendmail
    user = Fund.find(params[:id])
    @fund = user.name
    NoticeMailer.sendmail_confirm(user).deliver
    flash[:msg] = "#{@fund}さんにメールを送信しました."
    redirect_to funds_path
  end

  def sendmail_all
    month = (params[:month] || (Time.zone || Time).now.month).to_i
    NoticeMailer.sendmail_all_confirm(month).deliver
    flash[:msg] = "#{month}月度の会計連絡が済みました."
    redirect_to funds_path
  end

end
