require 'digest'

class User < ActiveRecord::Base

  attr_accessible :email, :hashed_password, :password
  attr_accessor :password
  before_save :encrypt_password
  after_destroy :ensure_an_admin_remains

  has_many :products
  has_many :orders

  validates :email,
            :uniqueness => true,
            :length => {:within => 5..50},
            :format => {:with => /^[^@][\w.-]+@[\w.-]+[.][a-z]{2,4}$/i}
  validates :password,
            :confirmation => true,
            :length => {:within => 4..20},
            :presence => true

  def self.authenticate(email, password)
    user = find_by_email(email)
    return user if user && user.authenticated?(password)
  end
  def authenticated?(password)
    self.hashed_password == encrypt(password + "sanj_binu" + salt)
  end

  protected
  def encrypt_password
    return if password.blank?
    salt = generate_salt
    self.hashed_password = encrypt(password + "sanj_binu" + salt)
  end

  def encrypt(string)
    Digest::SHA1.hexdigest(string)
  end
  def generate_salt
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    salt = ""
    1.upto(10) { |i| salt << chars[rand(chars.size-1)] }
    self.salt = salt
  end

  private

  def ensure_an_admin_remains
    if User.count.zero?
      raise "Can't delete last user"
    end
  end

end
