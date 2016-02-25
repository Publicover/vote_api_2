require 'test_helper'
require 'minitest/pride'

class VoterTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "voter exists" do
    assert Voter
  end

  test "create candidate" do
    a=Voter.create!(name: "Ted Smith", party: "Whig")
    assert_equal a.name, "Ted Smith"
  end
end
