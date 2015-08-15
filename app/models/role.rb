class Role < ActiveRecord::Base
	# satu role boleh ada banyak user
	has_many :user
end
