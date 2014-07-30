class HomeController < ApplicationController

  def index
    if user_signed_in?
      if current_user.blocked?
        @id=current_user.id
        @user=User.find(@id)


      end
    @id=current_user.id
    @user=User.find(@id)
      end
  end
end
