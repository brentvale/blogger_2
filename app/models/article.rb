# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  
  has_many :comments,
  :class_name => 'Comment',
  :primary_key => :id,
  :foreign_key => :article_id
  
end
