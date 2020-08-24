class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

	enum is_deleted: {Available: false, Invalid: true}
    #有効会員はtrue、退会済み会員はfalse

    def active_for_authentication?
        super && (self.is_deleted === "Available")
    end
    #is_activeが有効の場合は有効会員(ログイン可能)

  has_many :orders, dependent: :destroy

  has_many :deliveries, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products

  validates :email, presence: true, uniqueness: true
  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :family_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'
  validates :first_name_kana, presence: true,format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'はカタカナで入力して下さい。'
  validates :postal_code, presence: true, numericality: { only_integer: true }
  validates :address, presence: true
  validates :phone_number, presence: true, numericality: { only_integer: true }



end
