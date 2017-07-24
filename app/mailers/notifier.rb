class Notifier < ApplicationMailer
  default from: "notifications@example.com"

  def notify(teacher)
    @teacher = teacher
    mail(to: 'tina@cpits.org',
         subject: 'A New Poem Has Been Submitted')
  end
end
