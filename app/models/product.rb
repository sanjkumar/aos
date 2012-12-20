class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :price, :weight, :category_id

  default_scope :order => 'name'
  has_many :line_items

  belongs_to :user
  belongs_to :category


  validates :name, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :name, :uniqueness => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :message => "Must be a URL for GIF, JPG or PNG image."}

  # composed_of :price,
  #            :class_name => 'money',
  #           :mapping => %w(price cent)

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['name LIKE ?', "%#{search_query}%"])
      find(:all, :conditions => ['description LIKE ?', "%#{search_query}%"])
      find(:all, :conditions => ['price LIKE ?', "%#{search_query}%"])

    else
      find(:all)
    end
  end


end
