class FoodCategory < ActiveRecord::Base
  def to_param
    "#{id}-#{name.gsub(/\W/, '-').downcase}"
  end

  has_many :foods
end
