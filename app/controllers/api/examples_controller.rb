class Api::ExamplesController < ApplicationController
  def query_param
    render 'query.json.jb'
  end
end
