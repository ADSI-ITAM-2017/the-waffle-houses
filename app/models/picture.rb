class Picture < ApplicationRecord
  belongs_to :property


  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#"},
    path: ":rails_root/public/images/:id/:filename",
    url: "/images/:id/:filename"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
