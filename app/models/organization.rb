class Organization < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :orgcomments, dependent: :destroy
  ratyrate_rateable "speed", "engine", "price","overall_average"

  has_attached_file :image,
                    styles: { medium: '300x300>', thumb: '100x100>'},
                    default_url: '/images/:style/missing.png'
  validates_attachment_content_type :image,
                                    content_type: ['image/jpeg', 'image/gif', 'image/png']

end
