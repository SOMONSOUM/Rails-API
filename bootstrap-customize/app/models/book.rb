# == Schema Information
#
# Table name: books
#
#  id               :bigint           not null, primary key
#  pages            :integer          not null
#  publication_date :date
#  publisher        :string
#  title            :string           not null
#  weight           :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Book < ApplicationRecord
  validates :title, :pages, presence: true
  validates :pages, numericality: true
end
