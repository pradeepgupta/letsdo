require 'spec_helper'


  describe "Home page" do
    it "should have the content" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end

  describe "Help page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')
    end
  end


