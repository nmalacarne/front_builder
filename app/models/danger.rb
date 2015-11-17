class Danger < ActiveRecord::Base
  belongs_to :adventure
  attr_accessible :impending_doom, :impulse, :title
end
