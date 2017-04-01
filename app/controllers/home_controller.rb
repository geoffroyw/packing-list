class HomeController < ApplicationController
  def index
    @packages = Package.all.order(:name => 'asc')
    @unpacked_items = Item.unpacked
  end
end
