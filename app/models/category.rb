class Category < ActiveRecord::Base
  attr_accessible :id, :name
  has_many :products
  belongs_to :user




end

