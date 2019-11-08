
class UsersController < ApplicationController
  def new
    @user = User.new()
  end

  def create
    User.create(name: params[:name], location: params[:location], dob: params[:dob])
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.all()
  end
end