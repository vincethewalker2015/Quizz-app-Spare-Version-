class Users::RegistrationsController < Devise::RegistrationsController
  before_action :select_profile, only: :new

  def create
    super do |resource|
      if params[:profile]
        resource.profile_id = params[:profile]
        if resource.profile_id == 2
          resource.save
        else
        resource.save
        end
      end
    end
  end

  private
  def select_profile
    unless (params[:profile] == '1' || params[:profile] == '2')
      flash[:danger] = "You can only be a Student or Teacher."
      redirect_to root_url
    end
  end
end