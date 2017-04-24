class BadgesController < ApplicationController
  def index
    @badges = current_user.badges
  end

  def new
  end

  def create
    # no duplicatses
    title = params[:title]

    unless current_user.badges.find_by_title(title)
      @badge = Badge.new(title: params[:title])
      @badge.user = current_user
      @badge.save

      respond_to do |format|
        # Don't render.
        format.js
        # { render :nothing => true } #app/views/badges/create.js.erb
      end

    end
  end
end
