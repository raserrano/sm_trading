class SteemMonsterPage < SitePrism::Page

  set_url "https://steemmonsters.com/"
      
  element :username, '#account'
  element :password, '#key'
  element :login_menu, '#log_in_button button'
  element :login_btn '#btn_login'
end