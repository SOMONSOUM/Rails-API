class Cat < ApplicationRecord
  has_many  :cat_hobbies
  has_many  :hubbies, through: :cat_hobbies
end
