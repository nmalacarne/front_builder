class GrimPortent < ActiveRecord::Base
  belongs_to :danger
  attr_accessible :complete, :description, :danger_id
end
