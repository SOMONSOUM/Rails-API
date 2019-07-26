class MoviesController < ApplicationController
  def index
    @movies = ['Steve Jobs', 'Silicon Valley', 'The descendants of the Sun']
  end
end
