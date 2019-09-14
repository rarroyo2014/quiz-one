class HellosController < ApplicationController
  
  def index
    @hellos = Hello.all
  end

end
