class Word < ActiveRecord::Base
  attr_accessible :english, :polish
  validates :english, :presence => true
  validates :polish, :presence => true

	def self.search(search)
	  if search
	    find(:all, :conditions => ['english LIKE ? OR polish LIKE ?', "%#{search}%", "%#{search}%"])
	  else
	    []
	  end
	end

	def self.show()
		find(:all)
	end

end
