class QuestionsController < ApplicationController
  def create
    @question = Question.new
    @question.save
    respond_to do |format|
      format.js { }
    end
  end
end
