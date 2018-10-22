class HomeController < ApplicationController
  def welcome
    if logged_in?
      redirect_to enrollment_path
    end
  end
end
