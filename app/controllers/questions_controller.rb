class QuestionsController < ApplicationController
  def ask
    @example_variable = 'This is an example'
  end

  def answer
    question = params[:question]
    @answer = coach_answer(question)
  end

  layout 'application'

  private

  def coach_answer(question)
    if question.downcase == 'i am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
