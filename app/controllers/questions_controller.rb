class QuestionsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @questions = Question.all.order(created_at: :desc)
    
    user_options = UserOption.where(user_id: current_user.id)
    
    options = Option.where(question_id: @questions.pluck(:id), id: user_options.pluck(:option_id))
    
    @answered_question_ids = options.pluck(:question_id)
  end
  
  def create 
    @question = Question.create!(question: params[:question], user_id: current_user.id)
    Option.create!(option: params[:option1], user_id: current_user.id, question_id: @question.id)
    Option.create!(option: params[:option2], user_id: current_user.id, question_id: @question.id)
    Option.create!(option: params[:option3], user_id: current_user.id, question_id: @question.id)
    redirect_to "/questions"
  end
end
