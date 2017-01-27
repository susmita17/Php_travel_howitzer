require_relative 'Base_Page'
class Hotel_search_page < Base_Page
	path './properties'
validate :title, /Hotels/

element :location, "#citiesInput"
element :search_button, :xpath,".//div[@Class='searchbox'] //button[text()[contains(.,'Search')]]"


def location(location)
	location_element.set location	
end
def click_search_button
	search_button_element.click
end


end