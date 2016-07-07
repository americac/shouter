class Shout < ActiveRecord::Base
  validates_associated :content
  belongs_to :user
  belongs_to :content, polymorphic: true
  default_scope { order("created_at DESC") }

  def self.text_shouts
    where(content_type: 'TextShout')
  end
end
