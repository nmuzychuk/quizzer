class PagesController < ApplicationController
  def home
    @quizzes = Quiz.published
  end
end
