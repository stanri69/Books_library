class Book < ApplicationRecord

  has_attached_file :book_img, :styles => { :book_index => "250x350>", :book_show => "250x250>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_img, :content_type => /\Aimage\/.*\z/
end
