class Word < ActiveRecord::Base
  attr_accessible :english, :polish

  validates :english, :presence => true
  validates :polish, :presence => true
  validates :english, uniqueness: { scope: :polish }
  validates :polish, uniqueness: { scope: :english }

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
