class Customer < ApplicationRecord
  has_many :call_logs
  has_many :appointments

  # validations
  # validates_format_of :home_phone,
  #                     with: /\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}/i,
  #                     :allow_blank => true

  validates_format_of :home_phone,
                      with: /\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}/i,
                      allow_blank:  true,
                      message: "screwed up phone number"

  validates_format_of :cell_phone,
                      with: /\(\d{3}\) ?\d{3}( |-)?\d{4}|^\d{3}( |-)?\d{3}( |-)?\d{4}/i,
                      :allow_blank => true

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
