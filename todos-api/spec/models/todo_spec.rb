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

require 'rails_helper'

# Test suite for the Todo model
RSpec.describe Todo, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model

  it { should have_many(:items).dependent(:destroy) }
  # Validate tests
  # ensure colunms title and created_by are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
  # pending "add some examples to (or delete) #{__FILE__}"
end
