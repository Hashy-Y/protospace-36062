class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @prototype = Prototype.includes(:user)
    @prototypes = @user.prototypes
  end

  private
  def user_params
    params.permit(:id, :name, :profile, :occupation, :position)
  end
end
