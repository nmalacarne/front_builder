class Adventure < ActiveRecord::Base
  attr_accessible :description, :title, :dangers_attributes
  validates_presence_of :title
  has_many :dangers, dependent: :destroy
  accepts_nested_attributes_for :dangers, reject_if: :all_blank, allow_destroy: true
end
