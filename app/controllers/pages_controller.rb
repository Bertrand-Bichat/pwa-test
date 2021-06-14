class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :confidentialite, :cgu]

  def home
  end

  def confidentialite
  end

  def cgu
  end
end
