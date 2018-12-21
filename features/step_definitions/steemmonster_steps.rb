Given("user visit steemmonster page") do
  @page = SteemMonsterPage.new
  @page.load
end

When("user clicks login menu option") do
  @page.login_menu.visible?
  @page.click_login
end

Then("login form is displayed") do
  @page.login_btn.visible?
end

Given("user is in the steemmonsters page and open login form") do
  step 'user clicks login menu option'
  step 'login form is displayed'
end

When("login form has been filled and submited") do
  @page.fillLogin("ticos","5HqPiH3epRMhNZNGSf45PHHGH7SLAYCCd23Le19t2TKmm192dAC")
end

Then("steemmonsters main page should be loaded") do
  pending # Write code here that turns the phrase above into concrete actions
end


class SteemMonsterPage < SitePrism::Page

  set_url "https://steemmonsters.com/"
      
  element :username, '#account'
  element :password, '#key'
  element :login_menu, '#log_in_button button'
  element :login_btn, '#btn_login.btn-success'

  def click_login
    login_menu.click
  end

  def fillLogin(user, pass)
    username.set user
    password.set pass
    login_btn.click
  end

end