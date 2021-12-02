class MyQuestionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @questions = current_user.questions.order(created_at: :desc)
  end
  
  def destroy
    Question.find(params[:id]).destroy!
    redirect_to my_questions_path
  end
end
