class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation user
    @user = user
    mail( :to => @user.email, :subject => 'Thanks for signing up' )

  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forgot_password.subject
  #
  def forgot_password
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
