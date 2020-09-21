class Room < ApplicationRecord
  has_many :room_user_infos
  has_many :user_infos, through: :room_user_infos
end
