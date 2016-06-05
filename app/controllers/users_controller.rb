class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def updateAdmin
    user = User.find(params[:id])

    if user.is_admin
      if user.update_attribute(:is_admin, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_admin, true) && user.update_attribute(:is_manager, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end

  def updateManager
    user = User.find(params[:id])

    if user.is_manager
      if user.update_attribute(:is_manager, false)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    else
      if user.update_attribute(:is_manager, true)
        redirect_to(:action=>'index')
      else
        render('index')
      end
    end
  end
end
