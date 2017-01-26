require_relative 'Base_Page'
class Php_signup_page < Base_Page

path './register'
 
  validate :title, /^Register$/
  

  element :firstname,    :xpath,".//*[@id='headersignupform']/div[3]/input"  
  element :lastname,    :xpath,".//*[@id='headersignupform']/div[4]/input"
  element :mobile,    :xpath,".//*[@id='headersignupform']/div[5]/input"
  element :email,    :xpath,".//*[@id='headersignupform']/div[6]/input"
  element :password,    :xpath,".//*[@id='headersignupform']/div[7]/input"
  element :confirm_password,    :xpath,".//*[@id='headersignupform']/div[8]/input"
  element :signup_button,    :xpath,".//*[@id='headersignupform']/div[9]/button"
  element  :message,   :xpath,"html/body/div[3]/div[1]/div/div[1]/h3"

  

def login()
    firstname_element.set Howitzer.app_test_firstname
    lastname_element.set Howitzer.app_test_lastname
    mobile_element.set Howitzer.app_test_mobile
    email_element.set Howitzer.app_test_email
    password_element.set Howitzer.app_test_password
    confirm_password_element.set Howitzer.app_test_password 
    signup_button_element.click

end

def get_message()

  message_element.text
  end 

end
 
  
  
