class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def styleguide
    @base_font   = "Open Sans"
    @header_font = "Montserrat"
  end
end
