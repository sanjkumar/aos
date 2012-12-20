class UsersController < ApplicationController
  before_filter :is_admin?
  before_filter :admin_user, only: :destroy

  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end

    def new
      @user = User.new
    end

    def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to products_path, :notice => 'User creation successful!'
      else
        render :action => 'new'
      end
    end

    def destroy
      @user =User.find(parms[:id])
      if current_user?(@user)
        redirect_to users_path, :notice => 'You can not delete yourself !'
      else
        @user.destroy
        flash[:success] = 'User destroyed'
        redirect_to user_path
      end

    end
  end
end



