require_relative '../spec_helper'

  describe "User Authentication" do
  	it "signup user" do
  		visit '/user/signup'
  		fill_in 'Email', with: 'millisami@gmail.com'
  		fill_in 'Password', with: 'sekret'
  		click_button 'Submit'
  		page.should_have_content 'Signed up!' 
  	end
  end