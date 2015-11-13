require 'test_helper'

class AdventureTest < ActiveSupport::TestCase
  test "should not allow blank title" do 
    adventure = Adventure.new
    assert !adventure.save, "Saved adventure without title"
  end
end
