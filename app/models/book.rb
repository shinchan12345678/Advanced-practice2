class Book < ApplicationRecord
  belongs_to :user
  has_many :favorites,dependent: :destroy
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  def favorite_exist?(user)
    if favorites.find_by(user_id: user.id)
      true
    else
      false
    end
  end

end
