require 'test_helper'
require 'minitest/pride'

class CandidateTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "candidate exists" do
    assert Candidate
  end

  test "create candidate" do
    a=Candidate.create!(name: "Biggie", hometown: "Brooklyn", district: "NY", party: "Playas")
    assert_equal a.name, "Biggie"
  end
end
