class Notifier < ApplicationMailer
  default from: "me@sandbox2adc0cf06e4c481187d215630ec41a1d.com"

  def notify(teacher)
    @teacher = teacher
    mail(to: 'recipient@sandbox2adc0cf06e4c481187d215630ec41a1d.com',
         subject: 'New Poem Submitted')
  end
end
