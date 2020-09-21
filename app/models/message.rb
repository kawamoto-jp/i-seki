class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user_info
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end
end
