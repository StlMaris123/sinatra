class ExampleController < ApplicationController
  get '/' do
    title "This is just an example"
    erb :example
  end
end
