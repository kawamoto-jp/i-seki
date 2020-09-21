class Relationship < ApplicationRecord
  belongs_to :following, class_name: "UserInfos"
  belongs_to :follower, class_name: "UserInfos"
end
