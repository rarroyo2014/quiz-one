class HellosController < ApplicationController
  
  def index
    @hellos = Hello.order("RANDOM()").first
  end

end
