class Booking < ApplicationRecord
  belongs_to :listing
  belongs_to :guest, :foreign_key => :guest_id, class_name: 'User'

  validates :check_in_at, presence: true
  validates :check_out_at, presence: true
  validate :validate_dates
  validates :guest_count, numericality: { greater_than: 0 }

  private
    def validate_dates
      if check_in_at.present?
        # Validate check in date
        errors.add(:check_in_at, 'can\'t be in the past') if check_in_at < Date.today
        # Validate check out date
        errors.add(:check_in_out, 'can\'t be before check in') if check_out_at.present? and check_out_at <= check_in_at
      end
    end
end
