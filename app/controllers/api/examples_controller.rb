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

  def guess
    params['my_guess']

    correct_answer = 32
    # take in the user guess
    user_guess = params['my_guess'].to_i

    if user_guess > correct_answer
      @message = "You guessed too high"
    elsif user_guess < correct_answer
      @message = "You guessed too low"
    else
      @message = "You guessed correctly. wahooo!"
    end
    # compare it to 32
    # depending on that comparison, show the user a different message
    
    render 'guess_number.json.jb'
  end

  def segment_example
    @state = params['dan']
    render 'segment.json.jb'
  end

  def body_params
    
    # params = {"city"=>"buffalo"}
    
    @city = params[:city]
    render 'body.json.jb'
  end

  def user_password
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "Valid credentials"
    else
      @message = "Invalid credentials"
    end
    render 'credentials.json.jb'
  end
end
