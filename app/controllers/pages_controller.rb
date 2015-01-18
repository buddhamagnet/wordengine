class PagesController < ApplicationController
  def home
  	render 'home'
  end

  def page
    render params[:page]
  end
end
