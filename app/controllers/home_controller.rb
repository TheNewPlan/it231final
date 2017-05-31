require 'digest/MD5'
REALM = "localhost"
class HomeController < ApplicationController
  skip_before_filter :authorize, except: [:index, :login]
  def index
    @username = ''
    @password = ''
    @email = ''
    @aUser = 0
    userid = session[:user_id]
    if !params[:username].nil?
      @username = params[:username]
    end

    if !params[:password].nil?
      @password = params[:password]
    end

    if !params[:email].nil?
      @email = params[:email]
    end

    @newUser = nil
    @newUser = User.new
    @newUser.username = @username
    @newUser.password = Digest::MD5.hexdigest([@username, REALM, @password].join("."))
    @newUser.email = @email
    @newUser.save

    @aUser = User.where('id = ?', @newUser.id)
    @aUser = @aUser.length
    flash.now.alert = "New User Created"
    end
  def login
    userhash = {}
    allUsers = User.all
    allUsers.each do |user|
      userhash.store(use.username, user.password)
      session[:user_id]= user.id
    end
    authenticate_or_request_with_http_digest(REALM) do |username|
      userhash[username]
      session[:user_id] = user.id
    end


  def logout
    session[:user_id] = nil
    redirect_to home_index_path
  end
  end
end
