class Car < ActiveRecord::Base
  belongs_to :manufacturer

  validates :year, presence: true
  validates :color, presence: true
  validates :mileage, presence: true
  validates :manufacturer_id, presence: true
  validates :description, length: {minimum: 10}

end
