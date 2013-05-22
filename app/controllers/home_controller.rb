class HomeController < ApplicationController
  def index
    
    @words = Word.search(params[:search])

  end
end
