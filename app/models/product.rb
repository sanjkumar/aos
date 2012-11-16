class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :name, :price, :weight

  belongs_to :user

  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i, :message => "Must be a URL for GIF, JPG or PNG image."}


  def self.search(search_query)
    if search_query
      find(:all,:conditions => ['name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end

end
