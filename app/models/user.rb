class User < ApplicationRecord

  has_many :user_menus, dependent: :destroy
  has_many :users, through: :user_menus
  accepts_nested_attributes_for :user_menus, allow_destroy: true

end
