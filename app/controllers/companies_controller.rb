class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :welcome]

  def show
  end

  def welcome

  end

  private

  def set_company
    @company = current_user.team.company
  end
end
