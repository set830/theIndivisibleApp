class Page < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true

  has_many :blogs , :class_name => "Blog", :foreign_key => "page_id"
  has_many :postings , :class_name => "Posting", :foreign_key => "page_id"

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

  mount_uploader :firstimage, FirstimageUploader
  mount_uploader :secondimage, SecondimageUploader
  mount_uploader :thirdimage, ThirdimageUploader
  mount_uploader :fourthimage, FourthimageUploader
end
