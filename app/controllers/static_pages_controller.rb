class StaticPagesController < ApplicationController
	layout 'header'
  def home
  	@users = User.all
  end

  def help
  end
end
