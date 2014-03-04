require 'sinatra'
require 'yaml'
require 'wraith'

class HomeController < ApplicationController

  get '/' do
    @files = Dir.glob("configs/*.yaml").sort
    erb :index
  end
end
