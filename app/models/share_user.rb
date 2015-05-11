class ShareUser < ActiveRecord::Base
	belongs_to :vehicle

	def self.gps2m(lat_a, long_a, lat_b, long_b)
	  	pk = 180/3.14169


	  	a1 = lat_a.to_f/pk
		a2 = long_a.to_f/pk
		b1 = lat_b.to_f/pk
		b2 = long_b.to_f/pk

		t1 = Math.cos(a1)*Math.cos(a2)*Math.cos(b1)*Math.cos(b2)
		t2 = Math.cos(a1)*Math.sin(a2)*Math.cos(b1)*Math.sin(b2)
		t3 = Math.sin(a1)*Math.sin(b1)
		tt = Math.acos(t1 + t2 + t3)

		return 6366000*tt

	  end
end
