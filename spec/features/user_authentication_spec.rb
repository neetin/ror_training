require_relative '../spec_helper'

  describe "User Authentication" do
  	it "signup user" do
  		visit '/users/sign_up'
  		fill_in 'Email', with: 'new_user1@gmail.com'
  		fill_in 'Password', with: 'sekret'
  		fill_in 'Password confirmation', with: 'sekret'
      # puts page.html
      click_button 'Sign up'
      expect(page).to have_content 'Welcome! You have signed up successfully. Listing albums Title New Album'
      # assert page.has_content? 'Welcome! You have signed up successfully.'
      save_and_open_page
    end


        User.create(:email => 'millisami@gmail.com', :password => 'sekret')
      
    it "signin user" do
      visit '/users/sign_in'
      fill_in 'Email', with: 'millisami@gmail.com'
      fill_in 'Password', with: 'sekret'
      click_button 'Sign in'
      # page.should_have_content 'Signed in!'
      assert page.has_content? 'Signed in successfully.'
      save_and_open_page
    end

  end