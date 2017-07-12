class Review < ActiveRecord::Base
  belongs_to :reviewer, class_name: User.name
  belongs_to :reviewee, class_name: User.name
end
