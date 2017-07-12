class User < ActiveRecord::Base
  belongs_to :manager,
    class_name: name,
    foreign_key: :manager_id

  has_many :direct_reports,
    class_name: name,
    foreign_key: :manager_id,
    inverse_of: :manager

  has_many :reviews_as_reviewer,
    class_name: Review.name,
    foreign_key: :reviewer_id,
    inverse_of: :reviewer

  has_many :reviews_as_reviewee,
    class_name: Review.name,
    foreign_key: :reviewee_id,
    inverse_of: :reviewee
end
