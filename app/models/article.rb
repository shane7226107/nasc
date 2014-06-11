class Article < ActiveRecord::Base
  attr_accessible :board_id, :embed, :photo, :text, :title
  attr_accessible :id if Rails.env.development?

  belongs_to :board
end
