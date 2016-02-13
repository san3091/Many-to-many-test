class SessionController < ApplicationController
  def logout
    session[:user_id] = nil
  end
end
