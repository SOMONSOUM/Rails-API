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

FactoryGirl.define do
  factory :todo do
    title { Faker::Lorem.word }
    created_by { Faker::Number.number(10) }
  end
end
