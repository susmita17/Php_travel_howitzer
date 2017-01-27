require_relative 'Hotel_search_result_page'
class Hotel_Detail_Page < Hotel_search_result_page
	path './properties/hotel'
validate :title, /The O Hotel/

element :hotel_info,:xpath,".//*[@id='OVERVIEW']/div/div[1]/div[1]/div[1]/div[1]/div/strong"

def result_text
	hotel_info_element.text
end
end