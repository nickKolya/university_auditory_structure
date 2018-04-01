class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.category_name(category_name)
    define_method(:category_name) { category_name }
  end
end
