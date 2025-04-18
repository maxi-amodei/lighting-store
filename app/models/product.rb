class Product < ApplicationRecord
  belongs_to :category
  has_many :product_tags
  has_many :tags, through: :product_tags

  before_validation :generate_slug, if: :name_changed?

  validates :slug, presence: true, uniqueness: true

  def to_param
    slug
  end

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
