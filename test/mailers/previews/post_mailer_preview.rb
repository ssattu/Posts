# Preview all emails at http://localhost:3000/rails/mailers/post_mailer
class PostMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/post_mailer/new_post_added
  def new_post_added
    PostMailer.new_post_added
  end

end
