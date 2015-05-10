class Reservation < ActiveRecord::Base
	belongs_to :query_user
	belongs_to :vehicle

end
