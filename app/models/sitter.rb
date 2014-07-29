class Sitter < ActiveRecord::Base
  has_many :dogs
  belongs_to :user
end
