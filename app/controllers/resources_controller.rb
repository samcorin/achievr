class ResourcesController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def show
  end

  def index
  end

  private

  def set_user
    @user = current_user
  end
end
