class Pin < ActiveRecord::Base
  has_one_attached :image
  validates_presence_of :title, :url, :slug, :text, :category_id
  validates_uniqueness_of :slug
  belongs_to :category

  def thumbnail
  	return self.image.variant(resize: '60x60')
  end

  def medium_image
  	return self.image.variant(resize: '300x300')
  end

  #def image_exists_and_valid
  #	if image.attached? && !image.content.type.in?(%w(image/jpg image/png))
  #		errors.add(:image, "must be a JPEG or PNG.")
  #	elsif image.attached? == false
  #		errors.add(:image, 'must have an image attached')
  #	end
  #end	

end