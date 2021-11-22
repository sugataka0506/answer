class UserOptionsController < ApplicationController
  def create
    # question = Question.find(params[:question_id])
    # option = question.options.find(params[:option_id])
    # option.user_options.create!(user_id: current_user.id)
    
    UserOption.create!(user_id: current_user.id, option_id: params[:option_id])
    
    redirect_to questions_path
  end
end
