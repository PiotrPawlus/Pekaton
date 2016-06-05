class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def update
    user = User.find(params[:id])
    # Object.update_attribute(:only_one_field, "Some Value")
    if user.is_admin
      if user.update_attribute(:is_admin, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_admin, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end



end
