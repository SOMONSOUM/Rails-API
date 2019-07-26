# == Schema Information
#
# Table name: articles
#
#  id           :bigint           not null, primary key
#  author       :string
#  content      :text
#  name         :string
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Article < ApplicationRecord
end
