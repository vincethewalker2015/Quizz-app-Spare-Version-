class PagesController < ApplicationController

  def home
  end

  def profile
    @student_profile = Profile.find(1)
    @teacher_profile = Profile.find(2)
  end
  
end
