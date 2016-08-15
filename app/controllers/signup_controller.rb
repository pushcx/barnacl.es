class SignupController < ApplicationController
  before_filter :require_logged_in_user, :only => :invite

  def index
    redirect_to action: :invited, invitation_code: 'open' and return
    if @user
      flash[:error] = "You are already signed up."
      return redirect_to "/"
    end

    @title = "Signup"
  end

  def invite
    @title = "Pass Along an Invitation"
  end

  def invited
    if @user
      flash[:error] = "You are already signed up."
      return redirect_to "/"
    end

    @title = "Signup"

    @new_user = User.new

    render :action => "invited"
  end

  def signup
    @title = "Signup"

    @new_user = User.new(user_params)

    if @new_user.save
      session[:u] = @new_user.session_token
      flash[:success] = "Welcome to #{Rails.application.name}, " <<
        "#{@new_user.username}!"

      Countinual.count!("#{Rails.application.shortname}.users.created", "+1")
      Countinual.count!("#{Rails.application.shortname}.users.total",
        User.count)

      return redirect_to "/signup/invite"
    else
      render :action => "invited"
    end
  end

private
  def user_params
    params.require(:user).permit(
      :username, :email, :password, :password_confirmation, :about,
    )
  end
end
