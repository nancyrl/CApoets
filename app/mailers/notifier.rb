class Notifier < ApplicationMailer
  default from: "notifications@example.com"

  def notify(teacher)
    @teacher = teacher
    @url = 'http://afternoon-plains-14539.herokuapp.com/users/sign_in'
    mail(to: 'tina@cpits.org',
         subject: 'A New Poem Has Been Submitted')
  end
end
