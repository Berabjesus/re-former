class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password_digest)
  end
  # {"username"=>"sdfs", "email"=>"asd@easdas", "password"=>"[FILTERED]", "authenticity_token"=>"wSniYW/JnuQ770uRAoeDaQ4YmwJiFdZZJJ6TW0taBaAzYNXullZhA/e+bowoXqGDuG2ngyUeFL7IfhmkUAkJ+A=="}

end
