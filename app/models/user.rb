class User < ApplicationRecord
  before_save { enpno.downcase! }

  has_secure_password

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  # enum authority: { admin: "1", general: "2" }
  # enum status: { draft: 0, published: 1 }
end
