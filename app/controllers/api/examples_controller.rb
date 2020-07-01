class Api::ExamplesController < ApplicationController
  def query_param
    p "params"
    @state = params['state']
    render 'query.json.jb'
  end
end
