require_relative 'Base_Page'
class Hotel_search_page < Base_Page
	path './properties'
validate :title, /Hotels/

element :location, "#citiesInput"
element :search_button, :xpath,".//div[@Class='searchbox'] //button[text()[contains(.,'Search')]]"
element :hotel_name_link , :xpath,"html/body/div[5]/div[3]/div/table/tbody/tr[6]/td/div/div[2]/div/div[2]/h4/a/b"

def location(location)
	location_element.set location	
end

def click_search_button
	search_button_element.click
end

def click_hotel_link
	hotel_name_link_element.click

end
end