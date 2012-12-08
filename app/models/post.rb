class Post < ActiveRecord::Base
    attr_accessible :title, :content, :assets_attributes
    has_many :assets
    accepts_nested_attributes_for :assets, :allow_destroy => true    
    acts_as_tree

    def self.root_posts
    	return find(:all,:conditions => ["parent_id is null"])

    end
end
