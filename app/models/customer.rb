class Customer < ApplicationRecord
  has_many :call_logs
  has_many :appointments


  validates_format_of :home_phone,
                      with: /\A(\(?(\d{3})\)?[-. ]\d{3}[-.]\d{4})\z/i,
                      allow_blank:  true,
                      message: "Please correct home number. Format: ###-###-####"

  validates_format_of :cell_phone,
                      with: /\A(\(?(\d{3})\)?[-. ]\d{3}[-.]\d{4})\z/i,
                      :allow_blank => true,
                      message: "Please correct cell number. Format: ###-###-####"


  validates :name,
            presence: true

  validate :has_one_phone_nbr

  def has_one_phone_nbr
    if cell_phone.present?

    elsif home_phone.present?
    else
      errors.add(:cell_phone, "or Home phone should be populated")
    end
  end


end
