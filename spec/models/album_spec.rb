require_relative '../spec_helper'

describe Album do
	it "title can not be blank" do
		album  = Album.new(title: '')
		expect(album.valid?).to be(false)
	end
	
end