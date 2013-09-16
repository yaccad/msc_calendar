class Client < ActiveRecord::Base
  attr_accessible :clientName, :published_on
  
  validates_presence_of :clientName, :message => "title is mandatory"

end
