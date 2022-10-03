class PostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :content
  has_many :tags
  belongs_to :author
  
  def short_content
    "#{self.object.content[0...40]...}"
    
  end
end
