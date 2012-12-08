module PostsHelper
	def display_categories(categories)
    ret = "<ul>"
    for category in categories
     if category.parent_id == 0
     ret += "<li class='top'>"
     ret += link_to category.title
     ret += find_all_subcategories(category)
     ret += "</li>"
     end 
    end
    ret += "</ul>"
end
    
   def find_all_subcategories(category)
    if category.children.size > 0
      ret = '<ul>'
      category.children.each { |subcat| 
        if subcat.children.size > 0
          ret += '<li>'
          ret += link_to h(subcat.title), :action => 'show', :id => subcat
          ret += find_all_subcategories(subcat)
          ret += '</li>'
        else
          ret += '<li>'
          ret += link_to h(subcat.title), :action => 'show', :id => subcat 
          ret += '</li>'
        end
        }
      ret += '</ul>'
    end
	end
end
