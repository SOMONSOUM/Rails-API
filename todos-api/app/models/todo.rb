# == Schema Information
#
# Table name: todos
#
#  id         :bigint(8)        not null, primary key
#  created_by :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ApplicationRecord
  # model association  
  has_many :items, dependent: :destroy
  
  # validations
  validates :title, :created_by, presence: true
end
