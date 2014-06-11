class ProfilesController < ApplicationController
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.profiles.new(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end  

  def show
    @profile = Profile.find(params[:id])
  end
  
  def index
    @profiles = current_user.profiles
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      redirect_to @profile
    else
      render 'edit'
    end
  end
  
  def destroy
    Profile.find(params[:id]).destroy
    redirect_to profiles_path
  end

  def welcome
    
  end  

  private
  def profile_params
    params.require(:profile).permit(:address, :phone_number, :user_id)
  end
end
