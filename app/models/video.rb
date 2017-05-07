class Video < ApplicationRecord
  is_impressionable counter_cache: true,  :unique => :all
  acts_as_votable
  belongs_to :user



  # Paperclip attachments declaration
  has_attached_file :mp4,
                    :styles => {:thumb => ["400x400#", :jpg]}
  validates_attachment_content_type :mp4, content_type: /\Avideo/

  has_attached_file :image, styles: { medium: "300x300>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/




end
