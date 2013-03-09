# encoding: utf-8
require 'carrierwave/orm/activerecord'

class Product < ActiveRecord::Base
  belongs_to :user


  attr_accessible :description, :image, :title, :price, :user_id

  validates_presence_of :description, :image, :title
  validates :price, numericality: {greater_than_or_equal_to: 0.01}


  mount_uploader :image, ImageUploader
end
