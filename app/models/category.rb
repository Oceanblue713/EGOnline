class Category < ActiveRecord::Base
  belongs_to :Word

  validates :word_id, presence: true

end
