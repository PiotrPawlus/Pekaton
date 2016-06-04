class Users::RegistrationsController < Devise::RegistrationsController

  def new
    super
    continueLoop = true
    users = User.all
    while continueLoop do

      continueLoop = false
      generateUserId = rand(1e5...1e6).to_i
      $user_id = generateUserId.to_s
      if $user_id.length == 6
        users.each do |temp|
          if temp.user_id == $user_id
            continueLoop = true
          end
        end
      end
    end
  end

  def create
    @user = User.new(user_id: $user_id)
    @user.update_attributes(sign_up_params)
    if @user.save
      redirect_to(:controller => '/welcome', :action=>'index')
    else
      render('new')
    end
  end

  def edit
    super
    $userID = current_user.userID
  end

  private
  def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name, :surname, :phone)
  end

  def account_update_params
    params.require(:user).permit(:email, :password, :password_confirmation, :current_password, :name, :surname, :phone, :user_id)
  end

end
