class TeamLeaderMailer < ApplicationMailer
  default from: 'from@example.com'

  def team_leader_mail(user, team)
    @user = user
    @team = team
    mail to: user.email, subject: 'You have became team leader'
  end
end
