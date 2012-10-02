class Category < ActiveRecord::Base
	attr_accessible :name

	self.table_name = 'category'

	has_and_belongs_to_many :articles

	default_scope order('category.name')
end
