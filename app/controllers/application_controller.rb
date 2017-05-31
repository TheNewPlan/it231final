REALM = "localhost"
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :authorize, except: [:home]
  protected
  def authorize
    userhash = {}
      allUsers = User.all
        allUsers.each do |user|
          userhash.store(user.username,user.password)
        end
    authenticate_or_request_with_http_digest(REALM) do |username|
      userhash[username]
    end
  end
end
