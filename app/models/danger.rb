class Danger < ActiveRecord::Base
  belongs_to :adventure
  attr_accessible :impending_doom, :impulse, :title
  validates_presence_of :title
  has_many :grim_portents, dependent: :destroy
  accepts_nested_attributes_for :grim_portents, reject_if: :all_blank, allow_destroy: true
end
