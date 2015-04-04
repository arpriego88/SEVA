class PagesController < ApplicationController
  def home
    @thebest = Player.first(9)
  end
end