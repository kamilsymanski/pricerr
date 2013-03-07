class Job < ActiveRecord::Base
  attr_accessible :description, :feedback, :picurl, :price, :subject, :username
end
