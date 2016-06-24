class TopviewsController < ApplicationController
  def index
    @statuses = Status.all
    @members = Member.all
    @locations = Location.all
    @messages = Message.all
  end
end
