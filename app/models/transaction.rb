class Transaction < ApplicationRecord
  validates :frequency, inclusion:
  {
    in: %w(daily weekly bi-weekly monthly annually),
    message: '%{value} is not a valid frequency!'
  }
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :amount, presence: true,
            format: {
              with: /\A\d+(?:\.\d{0,2})?\z/
          },
            numericality: {
              greater_than: 0, less_than: 1_000_000
            }
  belongs_to :user

  validate :end_date_is_after_start_date

  private

  def end_date_is_after_start_date
  return if end_date.blank? || start_date.blank?

  if end_date < start_date
    errors.add(:end_date, 'cannot be before the start date')
  end
  end
end
