class Project < ActiveRecord::Base
  attr_accessible :name
  validates :name, :presence => true
  has_many :permissions, :as => :thing
  scope :readable_by, lambda { |user|
    joins(:permissions).where(:permissions => { :action => "view",
                                                :user_id => user.id})
  }
  has_many :tickets, :dependent => :delete_all
end
