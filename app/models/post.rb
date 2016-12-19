class Post < ApplicationRecord
	has_many :comments
	has_many :comments, :dependent => :destroy
end

