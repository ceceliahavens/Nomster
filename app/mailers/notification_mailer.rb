class NotificationMailer < ActionMailer::Base
  default from: "no-reply@birdreynoldsapp.com"

  def comment_added
  	mail(to: "ceceliahavens@hotmail.com", 
  		subject: "A comment has been added to your BirdReynolds place")
  end
end
