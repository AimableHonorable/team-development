class ContactMailer < ApplicationMailer
  def contact_mail(user, agenda)
    @user = user
  @agenda = agenda

  mail to: user.email, subject: "Agenda deleted"
  end
end
