class Plano < ActiveRecord::Base
  belongs_to :usuario
  #has_one :anuncios, :through => :anuncio_planos
  #accepts_nested_attributes_for :anuncios, :allow_destroy => true
  validates_presence_of :nome, :num_anuncios, :valor
  has_attached_file :banner,
                    :path => ":rails_root/public/images/banner/:id/:basename.:extension",
                    :url => "/images/banner/:id/:basename.:extension",
                    :default_url => "/images/default.png"
 
  validates_attachment_content_type :banner, :content_type => ["image/bmp", "image/x-png", "image/pjpeg", "image/jpg", "image/jpeg", "image/png", "image/gif"]
  
  validates_attachment_size :banner, :less_than => 1.megabyte
=begin
  def validate
    temp_file = banner.queued_for_write
    dimensions = Paperclip::Geometry.from_file(temp_file)
    if (dimensions.width > 770) || (dimensions.height > 120)
      errors.add("Banner", "deve ter o tamanho #{770}x#{120}.")
    end
  end
=end
end
