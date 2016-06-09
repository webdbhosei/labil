class RegistrationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def regist
  end
end
