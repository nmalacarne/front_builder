require 'test_helper'

class GrimPortentTest < ActiveSupport::TestCase
  test "should default to not being complete" do
    grim_portent = GrimPortent.new 
    grim_portent.save
    assert !grim_portent.complete
  end
end
