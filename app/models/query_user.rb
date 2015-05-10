class QueryUser < ActiveRecord::Base
	has_many :reservations
	has_many :vehicles, through: :reservations
end
