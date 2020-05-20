class TeachersController < ApplicationController
  before_action :user_signed_in

  def index
    @teacher = current_user
  end

  private
  def teacher_signed_in
    unless current_user
      flash[:notice] = "Must be logged in as a teacher"
      redirect_to :root
    end
  end
end