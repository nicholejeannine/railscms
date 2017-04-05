class PublicController < ApplicationController
  before_action :get_images
  def index
  end
  
  private
  def get_images
    @photos = Photo.order(:sort_order)
    # @images = %w(https://lorempixel.com/1500/500/nature/1 https://lorempixel.com/1500/500/nature/2 https://lorempixel.com/1500/500/nature/3)
  end
end
