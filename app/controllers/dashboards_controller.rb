class DashboardsController < ApplicationController
  def show
      # A contoller should only create one object whose responsibility
      # should be to compose the functionality the view is going to need
    @dashboard = Dashboard.new(current_user)
    #@text_shout = TextShout.new
    #@photo_shout = PhotoShout.new
    #@shouts = current_user.shouts
  end
end
