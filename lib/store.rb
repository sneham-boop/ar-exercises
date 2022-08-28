class ApparelValidator < ActiveModel::Validator
  def validate(record)
    unless record.mens_apparel==true || record.womens_apparel==true
      record.errors.add :name, message: "#{record.name} needs atleast mens or womens apparel."
    end
  end
end

class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0, only_integer: true, message:"Annual revenue for %{value} must be a value greater than 0." }
  validates_with ApparelValidator
end



