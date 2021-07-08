class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [
    :home,
    :confidentialite,
    :cgu,
    :offline,
    :qr_code
  ]

  def home
  end

  def confidentialite
  end

  def cgu
  end

  def offline
    render 'offline', layout: false
  end

  def qr_code
  end
end
