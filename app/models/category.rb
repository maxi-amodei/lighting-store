class Category < ApplicationRecord
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
