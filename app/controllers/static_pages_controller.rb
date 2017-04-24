class StaticPagesController < ApplicationController
	layout 'header'
  def home
  	@users = User.all
  	@products = Product.all
  end

  def help
  end
end
