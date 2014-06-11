class Board < ActiveRecord::Base
  attr_accessible :name, :user_id
  attr_accessible :id if Rails.env.development?

  has_many :articles
end
