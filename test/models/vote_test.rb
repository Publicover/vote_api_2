require 'test_helper'
require 'minitest/pride'

class VoteTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "vote exists" do
    assert Vote
  end

  test "create vote" do
    a=Vote.create!(candidate_id: 1, voter_id: 1)
    assert_equal a.voter_id, 1
  end
end
