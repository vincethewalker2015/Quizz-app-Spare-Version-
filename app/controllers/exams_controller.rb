class ExamsController < ApplicationController
  
  def index
    @exams = Exam.all
  end

  def new
    @exam = Exam.new
  end

  def show
    @exam = Exam.includes(questions: [:answers] ).find(params[:id])
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      flash[:success] = "Exam was created!"
      redirect_to exams_path
    else
      render 'new'
    end
  end

  def edit
    @exam = Exam.find_by_id(params[:id])
  end

  def update
    @exam = Exam.find_by_id(params[:id])
    if @exam.update_attributes(Exam_params)
      flash[:success] = 'Exam was updated!'
      redirect_to exams_path
    else
      render 'edit'
    end
  end

  def destroy
    @exam = Exam.find_by_id(params[:id])
    if @exam.destroy
      flash[:success] = 'Exam was destroyed!'
    else
      flash[:warning] = 'Error destroying exam...'
    end
    redirect_to exams_path
  end

  private

  def exam_params
    params.require(:exam).permit(:title, :subject, :max_score, questions_attributes: [:id, :title, :free_response, :max_score, :_destroy, answers_attributes: [:id, :title, :_destroy]])
  end

end
