require 'test_helper'
require 'byebug'

class FooTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_foo
    ann = User.create!(name: 'Ann')
    bob = User.create!(name: 'Bob', manager: ann)
    chu = User.create!(name: 'Chu', manager: ann)
    dan = User.create!(name: 'Dan', manager: bob)
    eve = User.create!(name: 'Eve', manager: bob)


    Review.create!(reviewer: ann, reviewee: bob)
    Review.create!(reviewer: bob, reviewee: dan)
    Review.create!(reviewer: bob, reviewee: eve)
    Review.create!(reviewer: chu, reviewee: eve)
    Review.create!(reviewer: eve, reviewee: chu)

    # Eve's reviewers -- done in one query?

    # The users whose reviewers are managed by ann

    # The reviewers of the people that reviewed eve

    # ActiveRecord::Base.logger = Logger.new(STDOUT)
    byebug
  end
end
