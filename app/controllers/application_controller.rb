class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :randomise

  def randomise
    @drop = [
      label: "stories", path: stories_path,
      label: "poems", path: poems_path, param: Poem.sample,
    ].sample
  end
end
