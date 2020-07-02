Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_example" => "examples#query_param"
    get "/name_route" => "examples#say_name"

    get "/guess_a_number" => "examples#guess"

    get "/url_segment_param/:dan" => "examples#segment_example"

    get "/number_segment/:my_guess" => "examples#guess"
    post "/guess_number_body" => "examples#guess"

    post "/body_params_url" => "examples#body_params"

    post "/security" => "examples#user_password"
  end
end
