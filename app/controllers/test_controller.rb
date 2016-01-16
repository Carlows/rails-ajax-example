class TestController < ApplicationController
  def index
  	@reports = Policereport.all
  end
end
