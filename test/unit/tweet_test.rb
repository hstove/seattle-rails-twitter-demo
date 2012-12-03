require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  test "tweet cannot be made without body" do
    t = Tweet.new
    t.save
    assert_false t.valid?
  end
end
