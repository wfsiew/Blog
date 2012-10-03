class Comment < ActiveRecord::Base
  attr_accessible :article_id, :body, :email, :name

  self.table_name = 'comment'

  belongs_to :article

  validates :name, :email, :body, :presence => true
  validate :article_should_be_published
  
  def article_should_be_published
    if article && !article.published?
      errors.add(:article_id, I18n.t('comment.errors.not_published_yet'))
    end
  end
end
