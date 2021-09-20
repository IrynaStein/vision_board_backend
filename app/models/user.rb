class User < ApplicationRecord
has_many :boards, dependent: :destroy
# has_one_attached :image, dependent: :destroy

has_secure_password

validates :name, :email, :username, presence: true
validates :username, uniqueness: true
validates :password, length: { in: 6..20}

end

