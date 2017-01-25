require_relative 'Base_Page'

class Php_Login_Page < Base_Page
	
	path './login'
	validate :title, /^Login$/



	element :email, :xpath, ".//*[@id='loginfrm']/div[4]/div/div[1]/input"

		element :password, :xpath, ".//*[@id='loginfrm']/div[4]/div/div[2]/input"
	    element :login_btn, :xpath, ".//*[@id='loginfrm']/div[4]/button"
        element :login_result, :xpath, ".//*[@id='loginfrm']/div[1]/div"

def input_email()
    email_element.set Howitzer.app_test_user
  end

   def input_password() 
    password_element.set Howitzer.app_test_pass
  end

def click_login_btn() 
    login_btn_element.click
  end

def result_text
	login_result_element.text
end
end
