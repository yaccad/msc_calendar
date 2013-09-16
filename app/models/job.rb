class Job < ActiveRecord::Base
  attr_accessible :description, :name, :published_on, :due_date, :quantity
  
  validates_presence_of :name, :message => "title is mandatory"

end
