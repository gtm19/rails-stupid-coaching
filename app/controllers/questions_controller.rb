class QuestionsController < ApplicationController
  def ask
    puts params
  end

  def answer
    @question = params["question"] == "" ? "[Stares blankly at coach]" : params["question"]
    @answer = "I don't care, get dressed and go to work!"
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    end
  end
end
