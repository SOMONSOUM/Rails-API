# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  avatar_url      :string
#  email           :string           default(""), not null
#  name            :string           not null
#  password_digest :string           default(""), not null
#  roles           :string           default([]), is an Array
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#  index_users_on_roles  (roles) USING gin
#

class User < ApplicationRecord
  has_secure_password
end
