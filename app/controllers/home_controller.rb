class HomeController < ApplicationController
  def index
    if user_signed_in?
    @id=current_user.id
    @user=User.find(@id)
      end
  end
end
