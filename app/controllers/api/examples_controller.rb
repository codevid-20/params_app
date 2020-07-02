class Api::ExamplesController < ApplicationController
  def query_param
    p "params"
    @chair_color = params['chair']
    render 'query.json.jb'
  end

  def say_name
    @message = params['name'].upcase
    if @message[0] == 'A'
      @message = "Your first name begins with 'a'"
    end
    
    render 'the_name.json.jb'
  end
end
