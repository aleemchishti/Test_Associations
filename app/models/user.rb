class User < ApplicationRecord
	has_many :articles
	validates :username, uniqueness: {case_senstive: false}, length: {minimum:6, maximum:14}
	VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: {case_senstive: false}, length: {maximum:100}, format: {with: VALID_EMAIL_REGEX }

end
