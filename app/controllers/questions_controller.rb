class QuestionsController < ApplicationController
  def index
    @questions = Question.all.order(created_at: :desc)
  end
  
  def create 
    @question = Question.create!(question: params[:question], user_id: current_user.id)
    Option.create!(option: params[:option1], user_id: current_user.id, question_id: @question.id)
    Option.create!(option: params[:option2], user_id: current_user.id, question_id: @question.id)
    Option.create!(option: params[:option3], user_id: current_user.id, question_id: @question.id)
    redirect_to "/questions"
  end
end
