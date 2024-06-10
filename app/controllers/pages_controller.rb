class PagesController < ApplicationController
  def home
    if user_signed_in?
      render 'home'
    else
      render 'home_not_signed_in'
    end
  end
end
