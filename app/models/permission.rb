class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :thing, :polymorphic => true
  attr_accessible :action, :thing_id, :thing_type, :user_id
  accepts_nested_attributes_for :user, :thing
end
