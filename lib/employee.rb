class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, :last_name, :store_id, presence: true

  validates :hourly_rate, numericality: { only_integer: true, message: "must be an integer" }, inclusion: { in: 40..200, message: "must be between 40 and 200" }

  before_save :create_new_password

  private
  def create_new_password
    self.password = SecureRandom.alphanumeric(8) unless self.password.present?
  end
end
