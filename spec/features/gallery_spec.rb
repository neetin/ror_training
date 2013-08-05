require_relative '../spec_helper'

  describe "Gallery Ownership" do

  	it "logged in user can create gallery" do
  		user = User.create!(
  			email: 'nsharma@lftechnology.com',
  			password: 'sekret'
  			)
  		
  		user2 = User.create!(
  			email: 'user2@test.com',
  			password: 'pass2'
  			)
  		visit '/users/sign_in'
      	fill_in 'Email', with: user.email
      	fill_in 'Password', with: user.password
      	click_button 'Sign in'

      	# visit new_album_pack	# '/albums/new'
      	# save_and_open_page

      	click_link 'New Album'
      	fill_in 'Title', with: 'My Album'
      	click_button 'Create Album'

      	# save_and_open_page
      	expect(Album.last.title).to eq('My Album')
      	expect(Album.last.user).to eq(user)
      	expect(Album.last.user).not_to eq(user2)

      	# Album.last.user.should_not eq(user)

  	end
  	it "title can not be blank" do
  		user = User.create!(
  			email: 'nsharma@lftechnology.com',
  			password: 'sekret'
  			)
  		
  		visit '/users/sign_in'
      	fill_in 'Email', with: user.email
      	fill_in 'Password', with: user.password
      	click_button 'Sign in'

      	# visit new_album_pack	# '/albums/new'
      	# save_and_open_page

      	click_link 'New Album'
      	fill_in 'Title', with: ''
      	click_button 'Create Album'
  	end

  end