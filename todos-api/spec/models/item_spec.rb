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

require 'rails_helper'

# Test suite for the Item model
RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation test
  # ensure colunm name is present before saving
  it { should validate_presence_of(:name) }
end
