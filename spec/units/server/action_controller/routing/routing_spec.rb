require File.expand_path(File.dirname(__FILE__) + '/../../../spec_helper')

module Restfulie::Server::ActionController::Test
  class AlbumsController < ::ActionController::Base
    include Restfulie::Server::ActionController::Base
    def index
    end
  end
end

ActionController::Routing::Routes.draw do |map|
end

describe Restfulie::Server::ActionController::Base, :type => :controller do
  tests Restfulie::Server::ActionController::Test::AlbumsController
  
  before(:each) do
    response.content_type = "application/atom+xml"
  end
  
end

