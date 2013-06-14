class Gettingmail < ActiveRecord::Base
  attr_accessible :count, :createdate, :details, :title
  validates :title,  :presence => true
  validates :details, :presence => true
end
