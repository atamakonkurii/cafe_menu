class Menu < ApplicationRecord
  enum menu_type: { food: 0, beverage: 1, desert: 2}

  has_many :user_menus
  has_many :users, through: :user_menus
end
