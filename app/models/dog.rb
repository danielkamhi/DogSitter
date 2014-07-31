class Dog < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment :avatar, :presence => true,:content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },:size => { :in => 0..10.megabytes }
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
  
	belongs_to :user
	belongs_to :sitter

  scope :insured, -> {where(insurance: true)}
  scope :solo, -> {where(solo_care: true)} 
  scope :full, -> {where(full_time: true)} 
  scope :medical, -> {where(medical_status: true)}
  scope :doggie, -> {where(doggie_cam: true)}  
  scope :years, -> {where('years_of_experience <5')} 

  def sitters
  	sitters = Sitter.all
  	sitters = sitters.insured if self.insurance == true
  	sitters = sitters.full if self.full_time == true
	sitters = sitters.medical if self.medical_status == true
	sitters = sitters.solo if self.solo_care == true
	sitters = sitters.doggie if self.doggie_cam == true
	sitters
  end
end
