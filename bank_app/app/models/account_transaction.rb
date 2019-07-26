class AccountTransaction < ApplicationRecord
  belongs_to :bank_account

  TRANSACTION_TYPE = ["withdraw", "deposit"]

  validates :bank_account, presence: true
  validates :amount, presence: true, numericality: true
  validates :transaction_type, presence: true, inclusion: { in: TRANSACTION_TYPE }
  validates :transaction_number, presence: true, uniqueness: true

  def load_defaults
    if self.new_record?
      self.transaction_number = SecureRandom.uuid
    end
  end
end
