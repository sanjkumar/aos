class WelcomeController < ApplicationController
  def home
    @categories =Category.all
    if params[:Category] and params[:Category].to_ > 0
      @products =Product.find_by_category_id(params[:Category].to_i)

    else
      @products =Product.all
    end
  end
end

def
thank_You
end

def
register
end