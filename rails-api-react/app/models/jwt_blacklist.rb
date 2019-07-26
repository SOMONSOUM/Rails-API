# == Schema Information
#
# Table name: jwt_blacklists
#
#  id  :bigint(8)        not null, primary key
#  exp :datetime
#  jti :string           not null
#
# Indexes
#
#  index_jwt_blacklists_on_jti  (jti)
#

class JWTBlacklist < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Blacklist

  self.table_name = "jwt_blacklists"
end
