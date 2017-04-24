class BadgesController < ApplicationController
  def index
    @badges = current_user.badges
  end

  def new
  end

  def create
    title = params[:title]

    unless current_user.badges.find_by_title(title)
      @badge = Badge.new(title: params[:title])
      @badge.user = current_user
      @badge.save

      respond_to do |format|
        format.js
      end
    end
  end
end
