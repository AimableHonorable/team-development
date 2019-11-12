class ContactMailer < ApplicationMailer
  def contact_mail(agenda)
  @agenda = agenda

  mail to: "example@mail.com", subject: "Agenda deleted"
  end
end
