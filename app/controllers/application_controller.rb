class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :randomise

  def randomise
      @drop = [
      	label: "stories", path: story_path(Story.all.sample),
      	label: "poems", path: poem_path(Poem.all.sample),
      ].sample
	end
end
