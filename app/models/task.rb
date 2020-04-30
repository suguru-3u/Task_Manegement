class Task < ApplicationRecord
  validates :name,presence: true,length:{maximum: 30}
  validate :validate_name_not_inculuding_comma
  belongs_to :user

  scope :recent, -> { order(created_at: :desc) }

  private
  def validate_name_not_inculuding_comma
    errors.add(:name,'に,を含めることはできません')if name&.include?(',')
  end
end