class Dog < ActiveRecord::Base
	belongs_to :user
	beongs_to :sitter
end
