class CallLog < ApplicationRecord
  belongs_to :customer

  validates :customer,
      presence: true


end
