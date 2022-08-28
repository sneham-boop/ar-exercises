class Employee < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: { message: "must be given please" }, on: :create
  validates :first_name, :last_name, presence: true
  validates :hourly_rate, numericality: { less_than: 200, greater_than: 40, only_integer: true}
end
