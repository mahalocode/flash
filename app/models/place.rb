class Place < ActiveRecord::Base
def self.search(search, page)
   paginate :per_page => 2, :page => page,
           :conditions => ['name like ?', "%#{search}%"],
           :order => 'name'
end
end