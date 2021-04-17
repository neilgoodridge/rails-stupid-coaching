class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:questions]
    if @answer == "I am going to work"
      @reply = "great"
    elsif @answer.include?("?")
      @reply = "Silly question, get dressed and go to work!"
    else
      @reply = "I don't care, get dressed and go to work!"
    end
  end
end
