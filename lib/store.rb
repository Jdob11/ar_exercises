class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }

  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0, message: "must be greater than 0" }

  validate :store_must_have_some_apparel

  def store_must_have_some_apparel
    unless mens_apparel || womens_apparel
      errors.add(:base, "The store must carry at least one type of apparel")
    end
  end
end
