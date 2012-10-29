class Ticket < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  accepts_nested_attributes_for :user
  attr_accessible :description, :title, :user
  validates :title, :presence => true
  validates :description, :presence => true,
                          :length => { :minimum => 10 }
end
