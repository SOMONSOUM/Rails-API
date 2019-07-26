# == Schema Information
#
# Table name: items
#
#  id         :bigint(8)        not null, primary key
#  done       :boolean
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  todo_id    :bigint(8)
#
# Indexes
#
#  index_items_on_todo_id  (todo_id)
#
# Foreign Keys
#
#  fk_rails_...  (todo_id => todos.id)
#

class Item < ApplicationRecord
  belongs_to :todo

  validates :name, presence: true
end
