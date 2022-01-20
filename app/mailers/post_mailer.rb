class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.new_post_added.subject
  #
  def new_post_added(post)
    @post = post

    mail(from: "7532970388sac@gmail.com", to: "ravinder@devohack.com", subject: "New Post Added by User")
  end
end
