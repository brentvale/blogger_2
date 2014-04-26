# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  author_name :string(255)
#  body        :text
#  article_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :article,
  :class_name => 'Article',
  :primary_key => :id,
  :foreign_key => :article_id
  
  def show
    @comment = Comment.new
    @comment.article_id = @article.id
  end
  
end
