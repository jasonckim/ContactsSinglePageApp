class Contact < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 1 }
  validates :number, presence: true, length: { minimum: 5 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                  format:     { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
end
