class Customer < ActiveRecord::Base
  belongs_to :category

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates_numericality_of :phone_no, :only_integer => true, :allow_nil => true, :message => "Enter proper mobile number"

  validates_length_of :phone_no, :maximum => 10

  validates_presence_of :name, :email_id

end
