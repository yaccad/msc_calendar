class Job < ActiveRecord::Base
  attr_accessible :description, :name, :published_on, :due_date, :quantity
end
