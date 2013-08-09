class AlbumMailer < ActionMailer::Base
  default from: "jpt@neetin.com.np"

  def notify_user(album)
  	@user = album.user
  	@album = album

  	mail(to:@user.email, 
  		subject: 'Album created')
  end
end
