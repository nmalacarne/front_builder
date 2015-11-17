class Adventure < ActiveRecord::Base
  attr_accessible :description, :title
  validates_presence_of :title
  has_many :dangers, dependent: :destroy
  accepts_nested_attributes_for :dangers
end
