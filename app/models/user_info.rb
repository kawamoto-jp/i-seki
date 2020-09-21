class UserInfo < ApplicationRecord
  has_many :room_user_infos
  has_many :rooms, through: :room_user_infos
end
