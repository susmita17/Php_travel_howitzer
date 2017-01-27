require_relative 'Hotel_search_page'
class Hotel_search_result_page < Hotel_search_page
	path './properties/search'
validate :title, /Search/

#element :hotel_list,:xpath,"//div[@class='itemscontainer']//table//tr//h4//b"
element :hotel_name_link , :xpath,"html/body/div[5]/div[3]/div/table/tbody/tr[1]/td/div/div[2]/div/div[1]/a/button"

def click_hotel_link
	hotel_name_link_element.click

end
end