class Dog < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :avatar, :presence => true,:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },:size => { :in => 0..10.kilobytes }
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  
	belongs_to :user
	belongs_to :sitter
end
