class HellosController < ApplicationController
  
  def index
    @hello = Hello.order("RANDOM()").first
  end

  def new 
    @hello = Hello.new
  end


  def create
    Hello.create(hello_params)
    redirect_to root_path
  end

  private

  def hello_params
    params.require(:hello).permit(:greet)
  end

end
