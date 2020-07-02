Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/query_params_example" => "examples#query_param"
    get "/name_route" => "examples#say_name"

    get "/guess_a_number" => "examples#guess"
  end
end
