# encoding: utf-8
require 'carrierwave/orm/activerecord'

class Product < ActiveRecord::Base
  attr_accessible :description, :image, :title

  mount_uploader :image, ImageUploader
end
