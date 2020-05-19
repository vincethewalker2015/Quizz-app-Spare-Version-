class StudentsController < ApplicationController
  before_action :user_signed_in

  def index
    @student = current_user
    @exams = Exam.all
  end

  private
  def student_signed_in
    unless current_user
      flash[:notice] = "Must be logged in as a student"
      redirect_to :root
    end
  end
end