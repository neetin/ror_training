require_relative '../spec_helper'

  describe "User Authentication" do
  	it "signup user" do
  		visit '/users/sign_up'
  		fill_in 'Email', with: 'millisami@gmail.com'
  		fill_in 'Password', with: 'sekret'
  		fill_in 'Password Confirmation', with: 'sekret'

  		save_and_open_page
  		click_button 'Submit'
  		page.should_have_content 'Signed up!' 
  	end
  end