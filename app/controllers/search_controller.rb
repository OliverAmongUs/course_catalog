class SearchController < ApplicationController
  def new
    @subjects = Subject.all
  end


  def show
  end
end
