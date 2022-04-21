class Resume < ApplicationRecord
  extend FriendlyId
  friendly_id :random_slug, use: :slugged

 


  # validations
  validates :title, presence: true
  validates :content, presence: true

  # scope
  scope :published, -> { where(status: "published") }
  scope :draft, -> { where(status: "draft") }

  # relationships
  belongs_to :user


  has_one_attached :mugshot do |image|
    image.variant :thumb, resize_to_limit: [200, 200]
  end


  def self.all_status
    [
      ["草稿", "draft"],
      ["發佈", "published"],
    ]
  end


  private
  def random_slug
    [*'a'..'z',*"A".."Z",*'0'..'9',"-","_"].sample(10).join
  end
  
end
