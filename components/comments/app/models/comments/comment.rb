module Comments
  class Comment < ApplicationRecord
    belongs_to :post, class_name: 'Posts::Post'
  end
end
